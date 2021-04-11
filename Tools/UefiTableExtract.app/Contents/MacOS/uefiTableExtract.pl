#!/usr/bin/perl -w

use strict;
use warnings;

#
# uefiTableExtract.pl is a Perl script to extract DSDT and SSDT tables from UEFI-Bios.
#
#
my $Version =  "Version 2.7 \n\# Copyright (c) 2014-19 by uglyJoe";
#               based on:
#               acpiTableExtract.pl v.1.2 - Copyright (c) 2013-2014 by Pike R. Alpha
#
#
# UEFIExtract is called to extract the binary files from the bios file.
#
# The binary files (.aml) will be saved in the AML sub-directory of the current bios directory.
# The IASL compiler/decompiler is called to decompile the files after the AML files are saved.
# Decompiled files will be stored in the DSL directory of the current bios directory.
# If this fails with: 'Namespace lookup failure, AE_ALREADY_EXISTS', look at the output for
# the last table which makes the trouble and try something like this in Terminal:
# cd AML
# mv SSDT-trouble.aml SSDT-trouble.bin && iasl -d SSDT-trouble.bin
# iasl -da DSDT.aml SSDT*.aml
#
#
# Use MaciASL to fix/change/patch the dsl file(s).
# Use IASL (or MaciASL) to compile the modified file(s) to check for errors and warnings.
#
# Use Dsdt2Bios to compress DSDT.aml into AmiBoardInfo.bin (original is saved in the AML sub-directory).
# Use UEFITool to put AmiBoardInfo.bin and SSDT-*.aml back into bios.
#
# Note: The extracted tables are not initialized by the BIOS when we extract them, and thus 
#       they <em>cannot</em> be used as ordinary DSDT and/or SSDT to boot OS X, or any other OS.
#       The reason for this is that certain variables (memory addresses) are not filled in.
#
#
# Usage: ./uefiTableExtract.pl /path/to/bios.rom
#
# Updates:
#            - v1.0  Renamed script from acpiTableExtract.pl to uefiTableExtract.pl
#            -       Changed script to work with UEFIExtract.
#            -       ...
#            - v1.1  Fixed bug if tools not found in PATH
#            -       Changed default path for iasl and UEFIExtract
#			 - v1.2  Added fixes to decompile iMac14.x firmware
#            - v2.0  App Version
#            - v2.1  Added test to found correct iasl command-line arguments 
#            - v2.2  Added small fix for newer versions of UEFIExtract
#            - v2.3  Removed Terminal color settings
#            -       Added fix to decompile more Apple firmwares
#            - v2.4  Update install.command with iasl62 and UEFIExtract NE alpha 55
#            -       Added support for UEFIExtract NE
#            - v2.5  More fixes for recent apple firmwares
#            - v2.6  Make fixing namespace errors more comfortable  
#            - v2.7  Fixing namespace errors more general  
#                    This should help decompiling firmwares by apple and gigabyte
#

use Cwd;
use File::Basename;
use File::Find;
use File::Copy 'move';
use File::Which;


#
# Defaults
#
my $pwd = $ENV{"HOME"};
my $amlDir = "$pwd/AML";
my $dslDir = "$pwd/DSL";
my $enable_decompile = 0;

my $checkedFiles = 0;
my $skippedFiles = 0;
my $skippedPaddingFiles = 0;
my $rom = "";
my $dump = $pwd;
my $iaslVersion = 2014;
my $uefiExtractNE = 0;
my $useSsdtFixes = 1;

#
# Theme
#
use Term::ANSIColor;
# Screen size
system("printf '\e[8;30;120t'");
# Screen position
system("printf '\e[3;0;0t'");
# Clear screen
system("clear");

# Print
sub myprint()
{
    my ($in) = @_;
    print color 'bold';
    printf ("%s \n", $in);
    print color 'reset';
}
# Error
sub myerror()
{
    my ($in) = @_;
    print color 'bold bright_red';
    printf ("%s \n", $in);
    print color 'reset';
}
# Print header
sub header()
{
    print color 'bold';
    print "# \n";
    print "# Uefi Table Extract $Version \n";
    print "# \n";
    print "\n";
    print color 'reset';
}

#
# Tools
#
my $IASL = cwd($0) . "/iasl";
my $UEFIExtract = cwd($0) . "/UEFIExtract";

sub tools()
{
    
    print "Based on acpiTableExtract.pl v.1.2 \n";
    print "Copyright (c) 2013-2014 by Pike R. Alpha \n";
    print "\n";
    
    # Test iasl binary
    if (! -x $IASL)
    {
        $IASL = which( "iasl" );
        if (! $IASL || ! -x $IASL)
        {
            &myerror ("Error: iasl not found!");
            return 0;
        }
        print "$IASL \n";
    }
    
    # Get iasl version

    if (-x $IASL)
    {
        open (DIR, "$IASL -h |") || return 0;
        while (<DIR>) {
            if ($_ =~ /\[f1,f2\]/) {
                $iaslVersion = 2013;
            }
        }
        close DIR;           # be done
        
        open (DIR, "$IASL -v |") || return 0;
        while (<DIR>) {      # read command's output from the pipe
            if ($_ ne "\n") {
                print $_;    # do something with what we read back from the process
            }
        }
        close DIR;           # be done
        print "\n";
    }
    
    # Test UEFIExtract binary
    if (! -x $UEFIExtract)
    {
        $UEFIExtract = which( "UEFIExtract" );
        if (! $UEFIExtract || ! -x $UEFIExtract)
        {
            &myerror ("Error: UEFIExtract not found!");
            return 0;
        }
        print "$UEFIExtract \n";
    }
    
    # Get UEFIExtract version
    if (-x $UEFIExtract)
    {
        open (DIR, "$UEFIExtract | grep UEFIExtract |") || return 0;
        while (<DIR>) {      # read command's output from the pipe
            if ($_ ne "\n") {
            	if ($_ =~ / NE /) {
            	    $uefiExtractNE = 1;
            	}
                print $_;    # do something with what we read back from the process
                last;        # we need only the first line
            }
        }
        close DIR;           # be done
        print "Copyright (c) 2014, Nikolaj Schlej. All rights reserved. \n";
        print "\n";
    }
    
    return 1;
}

#
# UEFIExtract: Extract BIN files from bios
#
sub extract()
{
    my ($in) = @_;
    if (-d $in)
    {
        `mkdir -p "$in".dump`;
    }
    print "\n";
    &myprint ("UEFIExtract - Extracting files to: $in.dump");
    if ($uefiExtractNE == 1) {
        `$UEFIExtract "$in" all`;
    }
    else {
        `$UEFIExtract "$in"`;
    }
}

#
# IASL: Disassemble AML files
#
sub aml2dsl()
{
    our ($in, $out) = @_;
    if (($enable_decompile == 1) && (-d $in))
    {
        if (! -d $out)
        {
            `mkdir "$out"`;
        }
        chdir($in);
        print "\n\n";
        &myprint ("IASL - Decompiling files to: $out \n");
        
        # quick and dirty fixes
        if ($useSsdtFixes == 1)
        {
            if (-f "SSDT-IdeTable.aml") # gigabyte and others
            {
                move("SSDT-IdeTable.aml", "SSDT-IdeTable.bin");
            }
        
            if (-f "SSDT-PcieTbt.aml") # iMac14.x
            {
                move("SSDT-PcieTbt.aml", "SSDT-PcieTbt.bin");
            }
        
            if (-f "SSDT-SDUsbLpt.aml") # iMac14.x
            {
                move("SSDT-SDUsbLpt.aml", "SSDT-SDUsbLpt.bin");
            }
            
            if (-f "SSDT-SataSec.aml") # MB5.x
            {
                move("SSDT-SataSec.aml", "SSDT-SataSec.bin");
            }
            
            if (-f "SSDT-TbtOnPCH.aml") # IM18.x
            {
                move("SSDT-TbtOnPCH.aml", "SSDT-TbtOnPCH.bin");
            }
            
            if (-f "SSDT-IGNoHda.aml") # MM6.x
            {
                move("SSDT-IGNoHda.aml", "SSDT-IGNoHda.bin");
            }
            
            if (-f "SSDT-PegSsdt.aml") # newer gb boards like Z390
            {
                move("SSDT-PegSsdt.aml", "SSDT-PegSsdt.bin");
            }

            if (-f "SSDT-AmdTabl.aml") # zotac zbox-nano
            {
                move("SSDT-AmdTabl.aml", "SSDT-AmdTabl.bin");
            }
            
            if (-f "SSDT-NvdTabl.aml") # zotac zbox-nano
            {
                move("SSDT-NvdTabl.aml", "SSDT-NvdTabl.bin");
            }
            
            # do your best and find the rest...
            find(\&file2fix, $in);
        }

        
        # file by file
        find(\&handle_file, $in);
    }
    
    sub file2fix
    {
        my $targetFile = $_;
        my ($ext) = $targetFile =~ /(\.[^.]+)$/;
        
        if ($ext && "$ext" eq ".aml" && $targetFile =~ /SSDT/)
        {
            $targetFile =~ s/\.[^.]+$//;
            if ($targetFile =~ /SSDT-TbtPEG/) # apple
            {
                &myprint ("Moving $targetFile");
                move($targetFile . ".aml", $targetFile . ".bin");
            }
            elsif ($targetFile =~ /SSDT-Usb/) # apple
            {
                &myprint ("Moving $targetFile");
                move($targetFile . ".aml", $targetFile . ".bin");
            }
            elsif ($targetFile =~ /_/) # gigabyte
            {
                &myprint ("Moving $targetFile");
                move($targetFile . ".aml", $targetFile . ".bin");
            }
            elsif ($targetFile =~ /SSDT-RV/) # gigabyte
            {
                &myprint ("Moving $targetFile");
                move($targetFile . ".aml", $targetFile . ".bin");
            }
        }
    }

    sub handle_file
    {
        my $targetFile = $_;
        my ($ext) = $targetFile =~ /(\.[^.]+)$/;

        if ($ext && "$ext" eq ".aml")
        {
            if ($targetFile =~ /SSDT/ || $targetFile =~ /DSDT/)
            {
                print "\n";
                &myprint ("Disassembling $targetFile");
                if ($iaslVersion == 2013)
                {
                    `$IASL -p "$out/$targetFile" -d "$targetFile" -e DSDT.aml,SSDT*.aml`;
                }
                else
                {
                    `$IASL -p "$out/$targetFile" -e DSDT.aml SSDT*.aml -d "$targetFile"`;
                }
            }
            else
            {
                print "\n";
                &myprint ("Skipping $targetFile");
            }
        }
        elsif ($ext && "$ext" eq ".bin") # file needs private namespace
        {
            if ($targetFile =~ /SSDT/)
            {
                print "\n";
                &myprint ("Disassembling $targetFile");
                if ($iaslVersion == 2013)
                {
                    `$IASL -p "$out/$targetFile" -d "$targetFile" -e DSDT.aml`;
                }
                else
                {
                    `$IASL -p "$out/$targetFile" -e DSDT.aml -d "$targetFile"`;
                }
            }
            else
            {
                print "\n";
                &myprint ("Skipping $targetFile");
            }
        }
    }
    
    if (-f "$out/DSDT.dsl")
    {
        $dump = dirname($in);
        system ("clear");
        &myprint ("Success - files saved to: $out");
        chdir $out or die "Cannot chroot to $out: $!\n";
        my @files = glob("*.dsl");
        print join("\n", @files);
        system ("clear");
        
        header();
        &myprint ("Success - files saved to: $dump");
        print "\n";
    }
}

#
# BIN to AML
#
sub revo_file
{
    my $filename = $_;
    my $filepath = $File::Find::name;
        
    $checkedFiles++;

    # The ACPI header is 36 bytes (skipping anything smaller).
    if ( ((-s $filename) > 36) && (substr($filename, 0, 7) ne "PADDING") && ($filename eq "body.bin")
          && ((grep(/\sRaw\s/, $filepath)) || (grep(/\sPE32\s/, $filepath))) )
    {
        if (open(FILE, $filename))
        {
            binmode FILE;

            my $start = 0;
            my $bytesRead = 0;
            my ($data, $patched_data, $targetFile, $signature, $length, $revision, $checksum, $id, $tid, $crev, $cid);

            while (($bytesRead = read(FILE, $signature, 4)) == 4)
            {
                $start += $bytesRead;

                if (#
                    # Signatures For Tables Defined By ACPI.
                    #
                    $signature eq "APIC" || # APIC Description Table.
                    $signature eq "MADT" || # Multiple APIC Description Table.
                    $signature eq "BERT" || # Boot Error Record Table.
                    $signature eq "BGRT" || # Boot Graphics Resource Table.
                    $signature eq "CPEP" || # Corrected Platform Error Polling Table.
                    $signature eq "DSDT" || # Differentiated System Description Table.
                    $signature eq "ECDT" || # Embedded Controller Boot Resources Table.
                    $signature eq "EINJ" || # Error Injection Table.
                    $signature eq "ERST" || # Error Record Serialization Table.
                    $signature eq "FACP" || # Firmware ACPI Control Structure.
                    $signature eq "FACS" || # Firmware ACPI Control Structure.
                    $signature eq "FPDT" || # Firmware Performance Data Table.
                    $signature eq "GTDT" || # Generic Timer Description Table.
                    $signature eq "HEST" || # Hardware Error Source Table
                    $signature eq "MSCT" || # Maximum System Characteristics Table.
                    $signature eq "MPST" || # Memory Power StateTable.
                    $signature eq "PMTT" || # Platform Memory Topology Table.
                    $signature eq "PSDT" || # Persistent System Description Table.
                    $signature eq "RASF" || # CPI RAS FeatureTable
                    $signature eq "SBST" || # Smart Battery Table.
                    $signature eq "SLIT" || # System Locality Information Table.
                    $signature eq "SRAT" || # System Resource Affinity Table.
                    $signature eq "SSDT" || # Secondary System Description Table.
                    #
                    # Signatures For Tables Reserved By ACPI.
                    #
                    $signature eq "BOOT" || # Simple Boot Flag Table.
                    $signature eq "CSRT" || # Core System Resource Table.
                    $signature eq "DBGP" || # Debug Port Table.
                    $signature eq "DBG2" || # Debug Port Table 2.
                    $signature eq "DMAR" || # DMA Remapping Table.
                    $signature eq "ETDT" || # Event Timer Description Table (Obsolete).
                    $signature eq "HPET" || # High Precision Event Timer Table.
                    $signature eq "IBFT" || # SCSI Boot Firmware Table.
                    $signature eq "IVRS" || # I/O Virtualization Reporting Structure.
                    $signature eq "MCFG" || # PCI Express memory mapped configuration space base address Description Table.
                    $signature eq "MCHI" || # Management Controller Host Interface Table.
                    $signature eq "MSDM" || # Microsoft Data Management Table.
                    $signature eq "SLIC" || # Microsoft Software Licensing Table Specification.
                    $signature eq "SPCR" || # Serial Port Console Redirection Table.
                    $signature eq "SPMI" || # Server Platform Management Interface Table.
                    $signature eq "TCPA" || # Trusted Computing Platform Alliance Capabilities Table.
                    $signature eq "TPM2" || # Trusted Platform Module 2 Table.
                    $signature eq "UEFI" || # UEFI ACPI Data Table.
                    $signature eq "WAET" || # Windows ACPI Eemulated Devices Table.
                    $signature eq "WDAT" || # Watch Dog Action Table.
                    $signature eq "WDRT" || # Watchdog Resource Table.
                    $signature eq "WPBT" || # Windows Platform Binary Table.
                    #
                    # Miscellaneous ACPI Tables.
                    #
                    $signature eq "PCCT" )  # Platform Communications Channel Table.
                {
                    read(FILE, $length, 4);
                    read(FILE, $revision, 1); # Revision (unused)
                    read(FILE, $checksum, 1); # Checksum (unused)
                    read(FILE, $id, 6);       # OEMID
                    read(FILE, $tid, 8);      # OEM Table ID
                    read(FILE, $crev, 4);     # OEM Revision (unused)
                    read(FILE, $cid, 4);      # Creator ID (unused)

                    if ($cid eq "AAPL" || $cid eq "INTL" || $id eq "      ")
                    {
                        printf("%s found in: %s @ 0x%x ", $signature, $filename, $start);
                        $length = unpack("N", reverse($length));

                        if ($signature eq "FACP" && $length lt 244)
                        {
                            printf(" - Skipped %s (size error)\n", $signature);
                        }
                        else
                        {
                            printf("(%d bytes) ", $length);
                                
                            if ($id ne "      ")
                            {
                                printf("'%s' ", $id);
                            }

                            printf("'%s' ", $tid);

                            if ($signature eq "SSDT")
                            {
                                $targetFile = sprintf("%s-%s.aml", $signature, unpack("A8", $tid));
                            }
                            else
                            {
                                $targetFile = sprintf("%s.aml", $signature);
                            }

                            printf("INTL %s\n", $targetFile);

                            seek(FILE, ($start - 4), 0);

                            if (($bytesRead = read(FILE, $data, $length)) > 0)
                            {
                                if (! -d $amlDir)
                                {
                                    `mkdir "$amlDir"`;
                                }

                                printf("Saving raw Acpi table data to: $amlDir/$targetFile\n");
                                open(OUT, ">$amlDir/$targetFile") || die $!;
                                binmode OUT;
                                    
                                # Uninitialized Acpi table data requires some patching
                                if ($id eq "      ")
                                {
                                    printf("Patching Acpi table...\n");
                                    $patched_data = $data;
                                    # Injecting OEMID (Apple ) and OEM Table ID (Apple00)
                                    substr($patched_data, 10) = 'APPLE Apple00';
                                    substr($patched_data, 23) = substr($data, 23, 5);
                                    # Injecting Creator ID (Loki) and Creator Revision (_) or 0x5f
                                    substr($patched_data, 28) = 'Loki_';
                                    substr($patched_data, 33) = substr($data, 33);
                                    $data = $patched_data;
                                    printf("%x ", unpack("%A8", $data));
                                    # Fix checksum here?
                                }

                                print OUT $data;
                                close(OUT);
                                
                                $enable_decompile = 1;
                                if ($signature eq "DSDT")
                                {
                                    `cp "$filename" "$amlDir/AmiBoardInfo.bin"`;
                                }
                                    
                                $filepath =~ s/$pwd/./g;
                                `echo "$targetFile\n$filepath" >> "$amlDir/filelist.txt"`;
                            }
                        }

                        seek(FILE, $start, 0);

                        print "\n";
                    }

                    $signature = "";
                    $cid = "";
                }
            }

            close (FILE);
        }
    }
    else
    {
        $skippedFiles++;

        if (substr($filename, 0, 7) eq "PADDING")
        {
            $skippedPaddingFiles++;
        }
    }
}

# App
sub main()
{
    $rom = "";
    while (! -f $rom)
    {
        &myprint (" ");
        &myprint ("Type ':q' to quit");
        &myprint ("or drag your UEFI-Bios into the terminal window.");
        &myprint ("Press [ Return <-' ]");
        &myprint (" ");

        $rom = <>;
        chomp $rom;
        $rom =~ s/^\s+|\\|\s+$//g;
        
        if ($rom eq ":q")
        {
            #`osascript -e 'quit app "Terminal"'`; # done from launcher
            exit(0);
        }
        elsif (-f $rom)
        {
            &myprint ("Found file: $rom");
            $pwd = dirname($rom);
            chdir($pwd);
            $pwd = cwd();
        }
        elsif (-d $rom && -f "$rom/DSDT.aml")
        {
            $enable_decompile = 1;
            $amlDir = $rom;
            $dump = dirname($amlDir);
            $dslDir = "$dump/DSL";            
            chdir($amlDir);
            &myprint ("Found dir: $amlDir");
            &aml2dsl($amlDir, $dslDir);
        }
        else
        {
            &myerror ("File or directory not found: $rom");
        }
    }
    
    &myprint ("Default path: $pwd");
    chdir($pwd);
    $amlDir = "$pwd/AML";
    $dslDir = "$pwd/DSL";
    
    $dump = $pwd;
    if ($rom ne "" && -f $rom)
    {
        &extract($rom);
        $dump = "$rom.dump";
        $amlDir = "$dump/AML";
        $dslDir = "$dump/DSL";
    }
    
    if (-f "$dump/body.bin")
    {
        $checkedFiles = 0;
        $skippedFiles = 0;
        $skippedPaddingFiles = 0;
        
        &myprint ("Searching binary files ...\n");
        find(\&revo_file, $dump);
        
        if ($checkedFiles > 0)
        {
            printf("%3d files checked\n%3d files skipped (shorter than Acpi table header)\n%3d file skipped (padding blocks / zero data)\n", $checkedFiles, ($skippedFiles - $skippedPaddingFiles), $skippedPaddingFiles);
        }
        else
        {
            &myerror ("Error: No .bin files found!");
            $enable_decompile = 0;
        }
    }
    
    &aml2dsl($amlDir, $dslDir);
}

# Start
header();
# Check tools
tools() || exit(1);
# Main loop
while (1)
{
    main();
}
exit(0);
