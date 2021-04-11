/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-CflS_Rvp.bin, Mon Apr 12 05:08:55 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001C87 (7303)
 *     Revision         0x02
 *     Checksum         0x81
 *     OEM ID           "AcpiRe"
 *     OEM Table ID     "CflS_Rvp"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "AcpiRe", "CflS_Rvp", 0x00001000)
{
    External (_SB_.BTRK, MethodObj)    // 1 Arguments
    External (_SB_.CSD0, MethodObj)    // 1 Arguments
    External (_SB_.CSD3, MethodObj)    // 1 Arguments
    External (_SB_.GBTR, MethodObj)    // 0 Arguments
    External (_SB_.GGIV, MethodObj)    // 1 Arguments
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.OSCO, UnknownObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.CNIP, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GLAN, DeviceObj)
    External (_SB_.PCI0.HDAS, DeviceObj)
    External (_SB_.PCI0.HDAS.VDID, UnknownObj)
    External (_SB_.PCI0.I2C0, DeviceObj)
    External (_SB_.PCI0.I2C0.TPD0, DeviceObj)
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (_SB_.PCI0.I2C1.TPL1, DeviceObj)
    External (_SB_.PCI0.I2C1.TPL1._STA, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0, DeviceObj)
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP01.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP01.SLOT, UnknownObj)
    External (_SB_.PCI0.RP01.VDID, UnknownObj)
    External (_SB_.PCI0.RP02, DeviceObj)
    External (_SB_.PCI0.RP02.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP02.SLOT, UnknownObj)
    External (_SB_.PCI0.RP02.VDID, UnknownObj)
    External (_SB_.PCI0.RP03, DeviceObj)
    External (_SB_.PCI0.RP03.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP03.SLOT, UnknownObj)
    External (_SB_.PCI0.RP03.VDID, UnknownObj)
    External (_SB_.PCI0.RP04, DeviceObj)
    External (_SB_.PCI0.RP04.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP04.SLOT, UnknownObj)
    External (_SB_.PCI0.RP04.VDID, UnknownObj)
    External (_SB_.PCI0.RP05, DeviceObj)
    External (_SB_.PCI0.RP05.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP05.SLOT, UnknownObj)
    External (_SB_.PCI0.RP05.VDID, UnknownObj)
    External (_SB_.PCI0.RP06, DeviceObj)
    External (_SB_.PCI0.RP06.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP06.SLOT, UnknownObj)
    External (_SB_.PCI0.RP06.VDID, UnknownObj)
    External (_SB_.PCI0.RP07, DeviceObj)
    External (_SB_.PCI0.RP07.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP07.SLOT, UnknownObj)
    External (_SB_.PCI0.RP07.VDID, UnknownObj)
    External (_SB_.PCI0.RP08, DeviceObj)
    External (_SB_.PCI0.RP08.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP08.SLOT, UnknownObj)
    External (_SB_.PCI0.RP08.VDID, UnknownObj)
    External (_SB_.PCI0.RP09, DeviceObj)
    External (_SB_.PCI0.RP09.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP09.SLOT, UnknownObj)
    External (_SB_.PCI0.RP09.VDID, UnknownObj)
    External (_SB_.PCI0.RP10, DeviceObj)
    External (_SB_.PCI0.RP10.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP10.SLOT, UnknownObj)
    External (_SB_.PCI0.RP10.VDID, UnknownObj)
    External (_SB_.PCI0.RP11, DeviceObj)
    External (_SB_.PCI0.RP11.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP11.SLOT, UnknownObj)
    External (_SB_.PCI0.RP11.VDID, UnknownObj)
    External (_SB_.PCI0.RP12, DeviceObj)
    External (_SB_.PCI0.RP12.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP12.SLOT, UnknownObj)
    External (_SB_.PCI0.RP12.VDID, UnknownObj)
    External (_SB_.PCI0.RP13, DeviceObj)
    External (_SB_.PCI0.RP13.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP13.SLOT, UnknownObj)
    External (_SB_.PCI0.RP13.VDID, UnknownObj)
    External (_SB_.PCI0.RP14, DeviceObj)
    External (_SB_.PCI0.RP14.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP14.SLOT, UnknownObj)
    External (_SB_.PCI0.RP14.VDID, UnknownObj)
    External (_SB_.PCI0.RP15, DeviceObj)
    External (_SB_.PCI0.RP15.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP15.SLOT, UnknownObj)
    External (_SB_.PCI0.RP15.VDID, UnknownObj)
    External (_SB_.PCI0.RP16, DeviceObj)
    External (_SB_.PCI0.RP16.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP16.SLOT, UnknownObj)
    External (_SB_.PCI0.RP16.VDID, UnknownObj)
    External (_SB_.PCI0.RP17, DeviceObj)
    External (_SB_.PCI0.RP17.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP17.SLOT, UnknownObj)
    External (_SB_.PCI0.RP17.VDID, UnknownObj)
    External (_SB_.PCI0.RP18, DeviceObj)
    External (_SB_.PCI0.RP18.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP18.SLOT, UnknownObj)
    External (_SB_.PCI0.RP18.VDID, UnknownObj)
    External (_SB_.PCI0.RP19, DeviceObj)
    External (_SB_.PCI0.RP19.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP19.SLOT, UnknownObj)
    External (_SB_.PCI0.RP19.VDID, UnknownObj)
    External (_SB_.PCI0.RP20, DeviceObj)
    External (_SB_.PCI0.RP20.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP20.SLOT, UnknownObj)
    External (_SB_.PCI0.RP20.VDID, UnknownObj)
    External (_SB_.PCI0.RP21, DeviceObj)
    External (_SB_.PCI0.RP21.SLOT, UnknownObj)
    External (_SB_.PCI0.RP21.VDID, UnknownObj)
    External (_SB_.PCI0.RP22, DeviceObj)
    External (_SB_.PCI0.RP22.SLOT, UnknownObj)
    External (_SB_.PCI0.RP22.VDID, UnknownObj)
    External (_SB_.PCI0.RP23, DeviceObj)
    External (_SB_.PCI0.RP23.SLOT, UnknownObj)
    External (_SB_.PCI0.RP23.VDID, UnknownObj)
    External (_SB_.PCI0.RP24, DeviceObj)
    External (_SB_.PCI0.RP24.SLOT, UnknownObj)
    External (_SB_.PCI0.RP24.VDID, UnknownObj)
    External (_SB_.PCI0.SAT0, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT0, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT0.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.PRT1, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT1.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.PRT2, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT2.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.PRT3, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT3.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.PRT4, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT5, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT5.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XDCI, DeviceObj)
    External (_SB_.PCI0.XDCI.D0I3, UnknownObj)
    External (_SB_.PCI0.XDCI.XDCB, UnknownObj)
    External (_SB_.PCI0.XHC_, DeviceObj)
    External (_SB_.PCI0.XHC_.MEMB, UnknownObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS10, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS14, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS10, DeviceObj)
    External (_SB_.PEPD, DeviceObj)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (_SB_.SGRA, MethodObj)    // 2 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (AUDD, FieldUnitObj)
    External (AUPL, UnknownObj)
    External (CNVI, UnknownObj)
    External (DVID, UnknownObj)
    External (ECON, IntObj)
    External (GBED, UnknownObj)
    External (GBEP, UnknownObj)
    External (GBES, UnknownObj)
    External (GPRW, MethodObj)    // 2 Arguments
    External (IC0D, FieldUnitObj)
    External (IC1D, FieldUnitObj)
    External (IC1S, FieldUnitObj)
    External (OSYS, UnknownObj)
    External (PCHS, UnknownObj)
    External (PEP0, UnknownObj)
    External (PEPC, UnknownObj)
    External (PIN_.OFF_, MethodObj)    // 1 Arguments
    External (PIN_.ON__, MethodObj)    // 1 Arguments
    External (PIN_.STA_, MethodObj)    // 1 Arguments
    External (PSOC, MethodObj)    // 1 Arguments
    External (RCG0, IntObj)
    External (RCG1, IntObj)
    External (RTBT, IntObj)
    External (RTD3, IntObj)
    External (S0ID, UnknownObj)
    External (SDS0, FieldUnitObj)
    External (SDS1, FieldUnitObj)
    External (SGMD, UnknownObj)
    External (SHSB, FieldUnitObj)
    External (SPST, IntObj)
    External (UAMS, UnknownObj)
    External (UTCE, UnknownObj)
    External (VRRD, FieldUnitObj)
    External (WGRC, IntObj)
    External (WIRC, IntObj)
    External (WWRC, IntObj)
    External (XDST, IntObj)
    External (XHPR, UnknownObj)

    If ((GBES != Zero)){}
    Scope (\)
    {
        Name (GPOM, Zero)
        Method (GPRV, 2, Serialized)
        {
            Local0 = (One << Arg0)
            If (Arg1)
            {
                \GPOM |= Local0
            }
            Else
            {
                \GPOM &= ~Local0
            }

            If ((\GPOM == Zero))
            {
                \PSOC (One)
            }
            Else
            {
                \PSOC (Zero)
            }
        }

        Name (PCPB, Zero)
        Method (PCPA, 2, Serialized)
        {
            Local0 = (One << Arg0)
            If (Arg1)
            {
                \PCPB |= Local0
            }
            Else
            {
                \PCPB &= ~Local0
            }

            If ((PCPB == Zero))
            {
                \GPRV (One, Zero)
            }
            Else
            {
                \GPRV (One, One)
            }
        }

        Name (SATM, Zero)
        Method (STMC, 2, Serialized)
        {
            Local0 = (One << Arg0)
            If (Arg1)
            {
                \SATM |= Local0
            }
            Else
            {
                \SATM &= ~Local0
            }

            If ((\SATM == Zero))
            {
                \GPRV (Zero, Zero)
            }
            Else
            {
                \GPRV (Zero, One)
            }
        }

        Method (STMS, 1, Serialized)
        {
            Local0 = (One << Arg0)
            Local1 = (Local0 & \SATM)
            If (Local1)
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }

        PowerResource (SPR0, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (\STMS (Zero))
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                \STMC (Zero, One)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                \STMC (Zero, Zero)
            }
        }

        PowerResource (SPR1, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (\STMS (One))
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                \STMC (One, One)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                \STMC (One, Zero)
            }
        }

        PowerResource (SPR2, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (\STMS (0x02))
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                \STMC (0x02, One)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                \STMC (0x02, Zero)
            }
        }

        PowerResource (SPR3, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (\STMS (0x03))
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                \STMC (0x03, One)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                \STMC (0x03, Zero)
            }
        }

        PowerResource (SPR5, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (\STMS (0x05))
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                \STMC (0x05, One)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                \STMC (0x05, Zero)
            }
        }

        PowerResource (ZPDR, 0x00, 0x0000)
        {
            Name (PWRG, Package (0x02)
            {
                0x03070011, 
                One
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (\PIN.STA (PWRG))
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                \PIN.ON (PWRG)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                \PIN.OFF (PWRG)
            }
        }

        Name (AURB, 0xFFFFFFFF)
        Method (RAPC, 2, Serialized)
        {
            If ((\AURB == 0xFFFFFFFF))
            {
                \AURB = \AUPL /* External reference */
            }

            If (Arg0)
            {
                If ((\AURB >= Arg1))
                {
                    \AURB -= Arg1
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }
            Else
            {
                \AURB += Arg1
                If ((\AURB >= \AUPL))
                {
                    \AURB = \AUPL /* External reference */
                }

                Return (One)
            }
        }
    }

    Scope (\_SB.PCI0.RP09)
    {
        Name (PSPL, 0x0CE4)
        Method (BCPR, 1, Serialized)
        {
            \PCPA (Zero, Arg0)
        }

        Name (_DSD, Package (0x04)  // _DSD: Device-Specific Data
        {
            ToUUID ("6b4ad420-8fd3-4364-acf8-eb94876fd9eb") /* Unknown UUID */, 
            Package (0x00){}, 
            ToUUID ("fdf06fad-f744-4451-bb64-ecd792215b10") /* Unknown UUID */, 
            Package (0x01)
            {
                Package (0x02)
                {
                    "FundamentalDeviceResetTriggeredOnD3ToD0", 
                    One
                }
            }
        })
        Name (CURP, Zero)
        Method (PALC, 1, Serialized)
        {
            If ((Arg0 > PSPL))
            {
                Return (Zero)
            }
            ElseIf ((Arg0 > CURP))
            {
                Local0 = (Arg0 - CURP) /* \_SB_.PCI0.RP09.CURP */
                If (RAPC (One, Local0))
                {
                    CURP = Arg0
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }
            Else
            {
                Local0 = (CURP - Arg0)
                RAPC (Zero, Local0)
                Return (One)
            }
        }

        Method (PINI, 0, Serialized)
        {
            If (PALC (0x04D6))
            {
                BCPR (Zero)
            }
            Else
            {
                BCPR (One)
            }
        }

        Method (PPBA, 1, Serialized)
        {
            If ((Arg0 == 0x80000000))
            {
                BCPR (One)
                Return (0x02)
            }
            ElseIf (PALC (Arg0))
            {
                BCPR (Zero)
                Return (One)
            }
            Else
            {
                BCPR (One)
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP21)
    {
        Name (PSPL, 0x0CE4)
        Method (BCPR, 1, Serialized)
        {
            \PCPA (One, Arg0)
        }

        Name (_DSD, Package (0x04)  // _DSD: Device-Specific Data
        {
            ToUUID ("6b4ad420-8fd3-4364-acf8-eb94876fd9eb") /* Unknown UUID */, 
            Package (0x00){}, 
            ToUUID ("fdf06fad-f744-4451-bb64-ecd792215b10") /* Unknown UUID */, 
            Package (0x01)
            {
                Package (0x02)
                {
                    "FundamentalDeviceResetTriggeredOnD3ToD0", 
                    One
                }
            }
        })
        Name (CURP, Zero)
        Method (PALC, 1, Serialized)
        {
            If ((Arg0 > PSPL))
            {
                Return (Zero)
            }
            ElseIf ((Arg0 > CURP))
            {
                Local0 = (Arg0 - CURP) /* \_SB_.PCI0.RP21.CURP */
                If (RAPC (One, Local0))
                {
                    CURP = Arg0
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }
            Else
            {
                Local0 = (CURP - Arg0)
                RAPC (Zero, Local0)
                Return (One)
            }
        }

        Method (PINI, 0, Serialized)
        {
            If (PALC (0x04D6))
            {
                BCPR (Zero)
            }
            Else
            {
                BCPR (One)
            }
        }

        Method (PPBA, 1, Serialized)
        {
            If ((Arg0 == 0x80000000))
            {
                BCPR (One)
                Return (0x02)
            }
            ElseIf (PALC (Arg0))
            {
                BCPR (Zero)
                Return (One)
            }
            Else
            {
                BCPR (One)
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.PEG0)
    {
        Name (PSPL, 0x0CE4)
        Method (BCPR, 1, Serialized)
        {
            \PCPA (0x02, Arg0)
        }

        Name (_DSD, Package (0x04)  // _DSD: Device-Specific Data
        {
            ToUUID ("6b4ad420-8fd3-4364-acf8-eb94876fd9eb") /* Unknown UUID */, 
            Package (0x00){}, 
            ToUUID ("fdf06fad-f744-4451-bb64-ecd792215b10") /* Unknown UUID */, 
            Package (0x01)
            {
                Package (0x02)
                {
                    "FundamentalDeviceResetTriggeredOnD3ToD0", 
                    One
                }
            }
        })
        Name (CURP, Zero)
        Method (PALC, 1, Serialized)
        {
            If ((Arg0 > PSPL))
            {
                Return (Zero)
            }
            ElseIf ((Arg0 > CURP))
            {
                Local0 = (Arg0 - CURP) /* \_SB_.PCI0.PEG0.CURP */
                If (RAPC (One, Local0))
                {
                    CURP = Arg0
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }
            Else
            {
                Local0 = (CURP - Arg0)
                RAPC (Zero, Local0)
                Return (One)
            }
        }

        Method (PINI, 0, Serialized)
        {
            If (PALC (0x04D6))
            {
                BCPR (Zero)
            }
            Else
            {
                BCPR (One)
            }
        }

        Method (PPBA, 1, Serialized)
        {
            If ((Arg0 == 0x80000000))
            {
                BCPR (One)
                Return (0x02)
            }
            ElseIf (PALC (Arg0))
            {
                BCPR (Zero)
                Return (One)
            }
            Else
            {
                BCPR (One)
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.SAT0)
    {
        Scope (PRT0)
        {
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (SPON, 0, NotSerialized)
            {
                \STMC (Zero, One)
            }

            Method (SPOF, 0, NotSerialized)
            {
                \STMC (Zero, Zero)
            }

            If (PRES ())
            {
                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x01)
                    {
                        SPR0
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (Package (0x01)
                    {
                        SPR0
                    })
                }
            }
        }

        Scope (PRT1)
        {
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (SPON, 0, NotSerialized)
            {
                \STMC (One, One)
            }

            Method (SPOF, 0, NotSerialized)
            {
                \STMC (One, Zero)
            }

            If (PRES ())
            {
                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x02)
                    {
                        SPR1, 
                        ZPDR
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (Package (0x02)
                    {
                        SPR1, 
                        ZPDR
                    })
                }
            }

            Method (ZPOF, 0, NotSerialized)
            {
                \ZPDR._OFF ()
            }

            Method (ZPON, 0, NotSerialized)
            {
                \ZPDR._ON ()
            }

            If (((RCG0 & One) && One))
            {
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66") /* Unknown UUID */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (One)
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x0F                                             // .
                                        })
                                    }

                                }

                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                            Case (One)
                            {
                                Return (One)
                            }
                            Case (0x02)
                            {
                                ZPOF ()
                                Return (One)
                            }
                            Case (0x03)
                            {
                                ZPON ()
                                Return (One)
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Scope (\_GPE)
                {
                    Method (_E30, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
                    {
                        ADBG ("ZPODD event")
                        If ((\_SB.GGIV (0x03040001) == Zero))
                        {
                            ADBG ("ODD detected")
                            \_SB.PCI0.SAT0.PRT1.ZPON ()
                        }

                        Notify (\_SB.PCI0.SAT0, 0x81) // Information Change
                    }
                }
            }
            ElseIf ((0x02 & RCG1))
            {
                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x30, 0x04))
                }
            }
        }

        Scope (PRT2)
        {
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (SPON, 0, NotSerialized)
            {
                \STMC (0x02, One)
            }

            Method (SPOF, 0, NotSerialized)
            {
                \STMC (0x02, Zero)
            }

            If (PRES ())
            {
                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x01)
                    {
                        SPR2
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (Package (0x01)
                    {
                        SPR2
                    })
                }
            }
        }

        Scope (PRT3)
        {
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (SPON, 0, NotSerialized)
            {
                \STMC (0x03, One)
            }

            Method (SPOF, 0, NotSerialized)
            {
                \STMC (0x03, Zero)
            }

            If (PRES ())
            {
                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x01)
                    {
                        SPR3
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (Package (0x01)
                    {
                        SPR3
                    })
                }
            }
        }

        Scope (PRT5)
        {
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (SPON, 0, NotSerialized)
            {
                \STMC (0x05, One)
            }

            Method (SPOF, 0, NotSerialized)
            {
                \STMC (0x05, Zero)
            }

            If (PRES ())
            {
                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x01)
                    {
                        SPR5
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (Package (0x01)
                    {
                        SPR5
                    })
                }
            }
        }

        Name (DRV, Zero)
        Name (PWR, Zero)
        Method (ZPOD, 3, Serialized)
        {
            If (!(0x02 & RCG1))
            {
                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Switch (ToInteger (Arg1))
            {
                Case (Zero)
                {
                    Return (Buffer (One)
                    {
                         0x0F                                             // .
                    })
                }
                Case (One)
                {
                    Return (Package (0x00){})
                }
                Case (0x02)
                {
                    DRV = ToInteger (DerefOf (Arg2 [Zero]))
                    PWR = ToInteger (DerefOf (Arg2 [One]))
                    Switch (ToInteger (DRV))
                    {
                        Case (0x0001FFFF)
                        {
                            If (PWR)
                            {
                                \ZPDR._ON ()
                            }
                        }

                    }

                    Return (Zero)
                }
                Case (0x03)
                {
                    DRV = ToInteger (DerefOf (Arg2 [Zero]))
                    Switch (ToInteger (DRV))
                    {
                        Case (0x0001FFFF)
                        {
                            Return (\ZPDR._STA ())
                        }
                        Default
                        {
                            Return (Ones)
                        }

                    }
                }
                Default
                {
                    Return (Zero)
                }

            }
        }
    }

    If (\_SB.PCI0.CNIP ())
    {
        If ((PCHS == 0x02))
        {
            Scope (\_SB.PCI0.XHC.RHUB.HS10)
            {
                PowerResource (BTPR, 0x00, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((\_SB.GBTR () == One))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_ON, 0, Serialized)  // _ON_: Power On
                    {
                        \_SB.BTRK (One)
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        \_SB.BTRK (Zero)
                    }
                }
            }
        }
        Else
        {
            Scope (\_SB.PCI0.XHC.RHUB.HS14)
            {
                PowerResource (BTPR, 0x00, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((\_SB.GBTR () == One))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_ON, 0, Serialized)  // _ON_: Power On
                    {
                        \_SB.BTRK (One)
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        \_SB.BTRK (Zero)
                    }
                }
            }
        }
    }

    If (\_SB.PCI0.CNIP ())
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS14)
        {
            Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                BTPR
            })
            Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
            {
                BTPR
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                BTPR
            })
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB)
    {
        Method (PS0X, 0, Serialized)
        {
        }

        Method (PS2X, 0, Serialized)
        {
        }

        Method (PS3X, 0, Serialized)
        {
        }
    }

    Scope (\_SB.PCI0.XDCI)
    {
        Method (PS0X, 0, Serialized)
        {
        }

        Method (PS3X, 0, Serialized)
        {
        }
    }

    If ((GBES != Zero))
    {
        Scope (\_SB.PCI0.GLAN)
        {
            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                \_SB.CSD3 (0x15)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (!GBED)
                {
                    \_SB.CSD0 (0x15)
                }
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        PowerResource (PAUD, 0x00, 0x0000)
        {
            Name (PSTA, One)
            Name (ONTM, Zero)
            Name (_STA, One)  // _STA: Status
            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                _STA = One
                PUAM ()
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                _STA = Zero
                PUAM ()
            }

            Method (PUAM, 0, Serialized)
            {
                If (((^_STA == Zero) && (\UAMS != Zero)))
                {
                    If ((\_SB.GGOV (0x0307000A) == One))
                    {
                        \_SB.SGOV (0x0307000A, Zero)
                        ^PSTA = Zero
                        ^ONTM = Zero
                    }
                }
                ElseIf ((^PSTA != One))
                {
                    \_SB.SGOV (0x0307000A, One)
                    ^PSTA = One
                    ^ONTM = Timer
                }
            }
        }
    }

    If ((\_SB.PCI0.HDAS.VDID != 0xFFFFFFFF))
    {
        Scope (\_SB.PCI0.HDAS)
        {
            Method (PS0X, 0, Serialized)
            {
                If ((\_SB.PCI0.PAUD.ONTM == Zero))
                {
                    Return (Zero)
                }

                Local0 = ((Timer - \_SB.PCI0.PAUD.ONTM) / 0x2710)
                Local1 = (AUDD + VRRD) /* External reference */
                If ((Local0 < Local1))
                {
                    Sleep ((Local1 - Local0))
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                \_SB.PCI0.PAUD
            })
        }
    }

    Scope (\_SB.PCI0.I2C1)
    {
        Method (INC1, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PCI0.I2C1.PXTC))
            {
                CopyObject (\_SB.PCI0.I2C1.TPL1.TD_X, \_SB.PCI0.I2C1.TPL1.TD_P)
            }
        }

        Method (PS0X, 0, Serialized)
        {
        }

        Method (PS3X, 0, Serialized)
        {
        }

        PowerResource (PXTC, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                PON ()
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                POFF ()
            }
        }

        Name (ONTM, Zero)
        Method (PSTA, 0, NotSerialized)
        {
            Return (One)
        }

        Method (PON, 0, NotSerialized)
        {
            \_SB.SGOV (0x030A000B, One)
            ONTM = Timer
            \_SB.SGRA (0x030A0009, One)
        }

        Method (POFF, 0, NotSerialized)
        {
            \_SB.SGRA (0x030A0009, Zero)
            \_SB.SGOV (0x030A000B, Zero)
            ONTM = Zero
        }

        Scope (TPL1)
        {
            Name (TD_P, Package (0x00){})
            Name (TD_X, Package (0x01)
            {
                \_SB.PCI0.I2C1.PXTC
            })
            Alias (IC1D, TD_D)
            Alias (\_SB.PCI0.I2C1.ONTM, TD_C)
            Method (PS0X, 0, Serialized)
            {
                If ((TD_C == Zero))
                {
                    Return (Zero)
                }

                Local0 = ((Timer - TD_C) / 0x2710)
                Local1 = (TD_D + VRRD) /* External reference */
                If ((Local0 < Local1))
                {
                    Sleep ((Local1 - Local0))
                }
            }

            Method (PS3X, 0, Serialized)
            {
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                If ((_STA () == 0x0F))
                {
                    Return (TD_P) /* \_SB_.PCI0.I2C1.TPL1.TD_P */
                }
                Else
                {
                    Return (Package (0x00){})
                }
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                If ((_STA () == 0x0F))
                {
                    Return (TD_P) /* \_SB_.PCI0.I2C1.TPL1.TD_P */
                }
                Else
                {
                    Return (Package (0x00){})
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PS0X ()
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PS3X ()
            }
        }
    }

    Scope (\_GPE)
    {
    }

    Method (PDOF, 0, NotSerialized)
    {
        If ((UTCE && (\_SB.GGIV (0x030A0007) == Zero)))
        {
            \_SB.SGOV (0x030A0001, Zero)
            Sleep (0x96)
            Local0 = Zero
            While ((Local0 < 0x0A))
            {
                If ((\_SB.GGOV (0x030A0006) == One))
                {
                    Break
                }
                Else
                {
                    Sleep (0x64)
                    Local0++
                }
            }
        }
    }

    Method (PDON, 0, NotSerialized)
    {
        If ((UTCE && (\_SB.GGIV (0x030A0007) == Zero)))
        {
            \_SB.SGOV (0x030A0001, One)
            Sleep (0x96)
            Local0 = Zero
            While ((Local0 < 0x0A))
            {
                If ((\_SB.GGOV (0x030A0006) == Zero))
                {
                    Break
                }
                Else
                {
                    Sleep (0x64)
                    Local0++
                }
            }
        }
    }
}

