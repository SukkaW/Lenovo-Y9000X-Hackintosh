/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-CnlY_Tbt.bin, Mon Apr 12 05:08:56 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000338C (13196)
 *     Revision         0x02
 *     Checksum         0x00
 *     OEM ID           "AcpiRe"
 *     OEM Table ID     "CnlY_Tbt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "AcpiRe", "CnlY_Tbt", 0x00001000)
{
    External (_ADR, IntObj)
    External (_SB_.BTRK, MethodObj)    // 1 Arguments
    External (_SB_.CAGS, MethodObj)    // 1 Arguments
    External (_SB_.CSD0, MethodObj)    // 1 Arguments
    External (_SB_.CSD3, MethodObj)    // 1 Arguments
    External (_SB_.GBTR, MethodObj)    // 0 Arguments
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.ISME, MethodObj)    // 1 Arguments
    External (_SB_.OSCO, UnknownObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.CNIP, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GLAN, DeviceObj)
    External (_SB_.PCI0.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.HDAS, DeviceObj)
    External (_SB_.PCI0.HDAS.VDID, UnknownObj)
    External (_SB_.PCI0.I2C0, DeviceObj)
    External (_SB_.PCI0.I2C0.TPD0, DeviceObj)
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (_SB_.PCI0.I2C1.TPL1, DeviceObj)
    External (_SB_.PCI0.I2C1.TPL1._STA, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.H_EC.PVOL, UnknownObj)
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP01.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP01.SLOT, UnknownObj)
    External (_SB_.PCI0.RP01.VDID, UnknownObj)
    External (_SB_.PCI0.RP02, DeviceObj)
    External (_SB_.PCI0.RP02._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP02.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP02.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP02.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP02.PXSX, DeviceObj)
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
    External (_SB_.PCI0.RP05.PDOF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP05.PDON, MethodObj)    // 0 Arguments
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
    External (_SB_.PCI0.RP09.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)
    External (_SB_.PCI0.RP09.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.PXSX.PNVM, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.PXSX.PRAD, MethodObj)    // 0 Arguments
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
    External (_SB_.PCI0.RP14.PXSX.WIST, MethodObj)    // 0 Arguments
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
    External (_SB_.PCI0.SAT0.NVM1, DeviceObj)
    External (_SB_.PCI0.SAT0.NVM1.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.NVM1.RPOF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.NVM1.RPON, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.NVM2, DeviceObj)
    External (_SB_.PCI0.SAT0.NVM2.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.NVM2.RPOF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.NVM2.RPON, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.NVM3, DeviceObj)
    External (_SB_.PCI0.SAT0.NVM3.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.NVM3.RPOF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.NVM3.RPON, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.PRT0, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT0.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.PRT1, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT1.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.PRT2, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT2.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.PRT3, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT3.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.PRT4, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT4.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.PRT5, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT5.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XDCI, DeviceObj)
    External (_SB_.PCI0.XDCI.D0I3, UnknownObj)
    External (_SB_.PCI0.XDCI.XDCB, UnknownObj)
    External (_SB_.PCI0.XHC_, DeviceObj)
    External (_SB_.PCI0.XHC_.MEMB, UnknownObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS05, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS10, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS14, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS04, DeviceObj)
    External (_SB_.PEPD, DeviceObj)
    External (_SB_.PSD0, MethodObj)    // 1 Arguments
    External (_SB_.PSD3, MethodObj)    // 1 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (_SB_.SGRA, MethodObj)    // 2 Arguments
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (AUDD, FieldUnitObj)
    External (CNVI, UnknownObj)
    External (DVID, UnknownObj)
    External (ECON, IntObj)
    External (GBED, UnknownObj)
    External (GBEP, UnknownObj)
    External (GBES, UnknownObj)
    External (IC0D, FieldUnitObj)
    External (IC1D, FieldUnitObj)
    External (IC1S, FieldUnitObj)
    External (MMRP, MethodObj)    // 2 Arguments
    External (MMTB, MethodObj)    // 2 Arguments
    External (OSYS, UnknownObj)
    External (PCHS, UnknownObj)
    External (PCPB, UnknownObj)
    External (PEP0, UnknownObj)
    External (PEPC, UnknownObj)
    External (PIN_.OFF_, MethodObj)    // 1 Arguments
    External (PIN_.ON__, MethodObj)    // 1 Arguments
    External (PIN_.STA_, MethodObj)    // 1 Arguments
    External (PRST, UnknownObj)
    External (PSON, UnknownObj)
    External (PWRG, UnknownObj)
    External (PXSX, DeviceObj)
    External (RCG0, IntObj)
    External (RCG1, IntObj)
    External (RPS0, IntObj)
    External (RPT0, IntObj)
    External (RTBC, IntObj)
    External (RTBT, IntObj)
    External (RTD3, IntObj)
    External (S0ID, UnknownObj)
    External (SCLK, UnknownObj)
    External (SDS0, FieldUnitObj)
    External (SDS1, FieldUnitObj)
    External (SGMD, UnknownObj)
    External (SHSB, FieldUnitObj)
    External (SPCO, MethodObj)    // 2 Arguments
    External (SPST, IntObj)
    External (TBCD, IntObj)
    External (TBHR, IntObj)
    External (TBOD, IntObj)
    External (TBPE, IntObj)
    External (TBRP, IntObj)
    External (TBTS, IntObj)
    External (TOFF, IntObj)
    External (TRD3, IntObj)
    External (TRDO, IntObj)
    External (TUID, UnknownObj)
    External (UAMS, UnknownObj)
    External (VRRD, FieldUnitObj)
    External (WAKG, UnknownObj)
    External (WAKP, UnknownObj)
    External (WPRP, UnknownObj)
    External (WRTO, UnknownObj)
    External (XDST, IntObj)
    External (XHPR, UnknownObj)

    If ((GBES != Zero)){}
    If (((RCG0 & 0x80) == 0x80))
    {
        Scope (\_SB.PCI0.RP02)
        {
            Name (BRST, Package (0x02)
            {
                0x04050001, 
                Zero
            })
            Name (RSTX, Package (0x02)
            {
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x02)
            {
                0x0403000D, 
                One
            })
            Name (WAKG, 0x0400000B)
            Name (SCLK, 0x05)
            Method (RSTG, 0, NotSerialized)
            {
                RSTX [Zero] = PRST /* External reference */
                RSTX [One] = WPRP /* External reference */
                Return (RSTX) /* \_SB_.PCI0.RP02.RSTX */
            }

            Name (WKEN, Zero)
            Name (MOL3, One)
            Name (OFEN, One)
            Name (FLGN, Zero)
            Name (FLGF, Zero)
            Name (FLGW, Zero)
            Method (PC2M, 1, Serialized)
            {
                Local0 = \_SB.PCI0.GPCB ()
                Local0 += ((Arg0 & 0x001F0000) >> One)
                Local0 += ((Arg0 & 0x07) << 0x0C)
                Return (Local0)
            }

            Method (GMIO, 1, Serialized)
            {
                OperationRegion (PXCS, SystemMemory, PC2M (\_SB.PCI0.RP02._ADR ()), 0x20)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    PBUS,   8, 
                    SBUS,   8
                }

                Local0 = \_SB.PCI0.GPCB ()
                Local0 += ((Arg0 & 0x001F0000) >> One)
                Local0 += ((Arg0 & 0x07) << 0x0C)
                Local0 += (SBUS << 0x14)
                Return (Local0)
            }

            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }

                If ((Arg0 == Zero))
                {
                    MOL3 = One
                }
                Else
                {
                    MOL3 = Zero
                }
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Name (WOFF, Zero)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((VDID == 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }

                    Return (PSTA ())
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    FLGN = MOL3 /* \_SB_.PCI0.RP02.MOL3 */
                    If ((VDID == 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }

                    If (CondRefOf (^WOFF))
                    {
                        If ((^WOFF != Zero))
                        {
                            Local0 = ((Timer - ^WOFF) / 0x2710)
                            If ((Local0 < 0x01F4))
                            {
                                Sleep ((0x01F4 - Local0))
                            }

                            ^WOFF = Zero
                        }
                    }

                    PON ()
                    L23D ()
                    If (FLGN)
                    {
                        Sleep (0x01F4)
                    }

                    OFEN = One
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    FLGF = MOL3 /* \_SB_.PCI0.RP02.MOL3 */
                    FLGW = WKEN /* \_SB_.PCI0.RP02.WKEN */
                    If ((VDID == 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }

                    If ((OFEN == Zero))
                    {
                        Return (Zero)
                    }

                    DL23 ()
                    POFF ()
                    If (FLGF)
                    {
                        \PIN.ON (BRST)
                        Sleep (0x02)
                        \PIN.OFF (PWRG)
                        If (CondRefOf (^WOFF))
                        {
                            ^WOFF = Timer
                        }
                    }

                    If (CondRefOf (WAKG))
                    {
                        If (FLGW)
                        {
                            \_SB.SHPO (WAKG, Zero)
                        }
                        Else
                        {
                            \_SB.SHPO (WAKG, One)
                        }
                    }

                    OFEN = Zero
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If (CondRefOf (PWRG))
                {
                    If (!\PIN.STA (PWRG))
                    {
                        Return (Zero)
                    }
                }

                If (\PIN.STA (RSTG ()))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (One)
                }
            }

            Method (PON, 0, NotSerialized)
            {
                \_SB.PSD0 (SLOT)
                If (FLGN)
                {
                    If (CondRefOf (PWRG))
                    {
                        \PIN.ON (PWRG)
                        Sleep (PEP0)
                    }

                    \PIN.OFF (BRST)
                    Sleep (0x14)
                }
                Else
                {
                    Stall (0x14)
                }

                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, One)
                }

                If (FLGN)
                {
                    Sleep (0x64)
                }

                \PIN.OFF (RSTG ())
            }

            Method (POFF, 0, NotSerialized)
            {
                \PIN.ON (RSTG ())
                \_SB.PSD3 (SLOT)
                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, Zero)
                    Sleep (0x10)
                }
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                Return (Package (0x01)
                {
                    PXP
                })
            }

            Scope (PXSX)
            {
                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x01)
                    {
                        \_SB.PCI0.RP02.PXP
                    })
                }

                Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                {
                    \PIN.ON (\_SB.PCI0.RP02.BRST)
                    Sleep (0xC8)
                    Notify (\_SB.PCI0.RP02.PXSX, One) // Device Check
                    \PIN.OFF (\_SB.PCI0.RP02.RSTG ())
                    \PIN.OFF (\_SB.PCI0.RP02.BRST)
                    Sleep (0xC8)
                    Notify (\_SB.PCI0.RP02.PXSX, One) // Device Check
                }
            }
        }
    }

    Scope (\_SB.PCI0.RP05)
    {
        Name (RSTG, Package (0x02)
        {
            0x0402000F, 
            Zero
        })
        Name (PWRG, Package (0x02)
        {
            0x04010012, 
            One
        })
        Name (WAKG, 0x0403000B)
        Name (SCLK, 0x04)
        Name (TUID, Zero)
        Name (G2SD, Zero)
        Name (RSTF, Zero)
        Name (WKEN, Zero)
        Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
        Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
        {
            Return (Package (0x04)
            {
                ToUUID ("6211e2c0-58a3-4af3-90e1-927a4e0c55a4") /* Unknown UUID */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "HotPlugSupportInD3", 
                        One
                    }
                }, 

                ToUUID ("efcc06cc-73ac-4bc3-bff0-76143807c389") /* Unknown UUID */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "ExternalFacingPort", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "UID", 
                        TUID
                    }
                }
            })
        }

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If ((Arg1 >= One))
            {
                WKEN = Zero
                TOFF = 0x02
            }
            ElseIf ((Arg0 && Arg2))
            {
                WKEN = One
                TOFF = One
            }
            Else
            {
                WKEN = Zero
                TOFF = Zero
            }
        }

        PowerResource (PXP, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                TRDO = One
                PON ()
                TRDO = Zero
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                TRD3 = One
                POFF ()
                TRD3 = Zero
            }
        }

        Method (PSTA, 0, NotSerialized)
        {
            If ((RSTF == One))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (SXEX, 0, Serialized)
        {
            Local7 = \MMTB (RPS0, RPT0)
            OperationRegion (TBDI, SystemMemory, Local7, 0x0550)
            Field (TBDI, DWordAcc, NoLock, Preserve)
            {
                DIVI,   32, 
                CMDR,   32, 
                Offset (0x548), 
                TB2P,   32, 
                P2TB,   32
            }

            Local1 = 0xC8
            P2TB = 0x09
            While ((Local1 > Zero))
            {
                Local1 = (Local1 - One)
                Local2 = TB2P /* \_SB_.PCI0.RP05.SXEX.TB2P */
                If ((Local2 == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If ((Local2 & One))
                {
                    Break
                }

                Sleep (0x05)
            }

            P2TB = Zero
            Local1 = 0x01F4
            While ((Local1 > Zero))
            {
                Local1 = (Local1 - One)
                Local2 = TB2P /* \_SB_.PCI0.RP05.SXEX.TB2P */
                If ((Local2 == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If ((DIVI != 0xFFFFFFFF))
                {
                    Break
                }

                Sleep (0x0A)
            }
        }

        Method (PON, 0, NotSerialized)
        {
            Local7 = \MMRP (\RPS0, \RPT0)
            OperationRegion (L23P, SystemMemory, Local7, 0x0480)
            Field (L23P, WordAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                    ,   3, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                PSD0,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE0), 
                    ,   7, 
                NCB7,   1, 
                Offset (0xE2), 
                    ,   2, 
                L2TE,   1, 
                L2TR,   1, 
                Offset (0x420), 
                    ,   30, 
                DPGE,   1
            }

            Field (L23P, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Local6 = \MMTB (\RPS0, \RPT0)
            OperationRegion (TBDI, SystemMemory, Local6, 0x0550)
            Field (TBDI, DWordAcc, NoLock, Preserve)
            {
                DIVI,   32, 
                CMDR,   32, 
                Offset (0x84), 
                TBPS,   2, 
                Offset (0x548), 
                TB2P,   32, 
                P2TB,   32
            }

            If (TBPE)
            {
                Return (Zero)
            }

            G2SD = Zero
            If (\RTBC)
            {
                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, One)
                }

                Sleep (\TBCD)
            }

            If (CondRefOf (PWRG))
            {
                \PIN.ON (PWRG)
                Sleep (PEP0)
            }

            \PIN.OFF (RSTG)
            RSTF = Zero
            If ((NCB7 != One))
            {
                Return (Zero)
            }

            DPGE = Zero
            L2TR = One
            Sleep (0x10)
            Local0 = Zero
            While (L2TR)
            {
                If ((Local0 > 0x04))
                {
                    Break
                }

                Sleep (0x10)
                Local0++
            }

            NCB7 = Zero
            DPGE = One
            Local0 = Zero
            While ((LASX == Zero))
            {
                If ((Local0 > 0x08))
                {
                    Break
                }

                Sleep (0x10)
                Local0++
            }

            Local1 = PSD0 /* \_SB_.PCI0.RP05.PON_.PSD0 */
            PSD0 = Zero
            Local2 = 0x14
            While ((Local2 > Zero))
            {
                Local2 = (Local2 - One)
                Local3 = TB2P /* \_SB_.PCI0.RP05.PON_.TB2P */
                If ((Local3 != 0xFFFFFFFF))
                {
                    Break
                }

                Sleep (0x0A)
            }

            If ((Local2 <= Zero)){}
            SXEX ()
            PSD0 = Local1
            If (CondRefOf (PDON))
            {
                PDON ()
            }
        }

        Method (POFF, 0, NotSerialized)
        {
            If ((TOFF == Zero))
            {
                Return (Zero)
            }

            Local7 = \MMRP (\RPS0, \RPT0)
            OperationRegion (L23P, SystemMemory, Local7, 0x0480)
            Field (L23P, WordAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                    ,   3, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                PSD0,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE0), 
                    ,   7, 
                NCB7,   1, 
                Offset (0xE2), 
                    ,   2, 
                L2TE,   1, 
                L2TR,   1, 
                Offset (0x420), 
                    ,   30, 
                DPGE,   1
            }

            Field (L23P, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Local6 = \MMTB (RPS0, RPT0)
            OperationRegion (TBDI, SystemMemory, Local6, 0x0550)
            Field (TBDI, DWordAcc, NoLock, Preserve)
            {
                DIVI,   32, 
                CMDR,   32, 
                Offset (0x84), 
                TBPS,   2, 
                Offset (0x548), 
                TB2P,   32, 
                P2TB,   32
            }

            Local6 += 0x00108000
            OperationRegion (DSP0, SystemMemory, Local6, 0x0100)
            Field (DSP0, DWordAcc, NoLock, Preserve)
            {
                Offset (0xD0), 
                    ,   29, 
                LAI0,   1, 
                Offset (0xD8), 
                    ,   22, 
                PDS0,   1
            }

            Local6 += 0x00018000
            OperationRegion (DSP1, SystemMemory, Local6, 0x0100)
            Field (DSP1, DWordAcc, NoLock, Preserve)
            {
                Offset (0xD0), 
                    ,   29, 
                LAI1,   1, 
                Offset (0xD8), 
                    ,   22, 
                PDS1,   1
            }

            Local1 = PSD0 /* \_SB_.PCI0.RP05.POFF.PSD0 */
            PSD0 = Zero
            Local3 = P2TB /* \_SB_.PCI0.RP05.POFF.P2TB */
            If ((TOFF > One))
            {
                TOFF = Zero
                Sleep (0x0A)
                PSD0 = Local1
                RSTF = One
                Return (Zero)
            }

            TOFF = Zero
            Sleep (0x0A)
            Local6 = TBPS /* \_SB_.PCI0.RP05.POFF.TBPS */
            TBPS = Zero
            Sleep (0x0A)
            Local2 = PDS0 /* \_SB_.PCI0.RP05.POFF.PDS0 */
            Local3 = PDS1 /* \_SB_.PCI0.RP05.POFF.PDS1 */
            TBPS = Local6
            PSD0 = Local1
            L2TE = One
            Sleep (0x10)
            Local0 = Zero
            While (L2TE)
            {
                If ((Local0 > 0x04))
                {
                    Break
                }

                Sleep (0x10)
                Local0++
            }

            NCB7 = One
            \PIN.ON (RSTG)
            RSTF = One
            If (\RTBC)
            {
                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, Zero)
                }

                Sleep (0x10)
            }

            Sleep (0x0A)
            If (CondRefOf (PWRG))
            {
                If (CondRefOf (WAKP))
                {
                    If (((WAKP == Zero) || !WKEN))
                    {
                        If (CondRefOf (PCPB))
                        {
                            If ((PCPB != Zero))
                            {
                                \PIN.OFF (PWRG)
                            }
                        }
                        Else
                        {
                            \PIN.OFF (PWRG)
                        }
                    }
                }
                ElseIf (CondRefOf (PCPB))
                {
                    If ((PCPB != Zero))
                    {
                        \PIN.OFF (PWRG)
                    }
                }
                Else
                {
                    \PIN.OFF (PWRG)
                }
            }

            If (CondRefOf (WAKG))
            {
                If (((WAKG != Zero) && WKEN))
                {
                    \_SB.SHPO (WAKG, Zero)
                }
            }

            TBPE = Zero
            Local6 = \TBOD /* External reference */
            Local7 = (Local6 & 0x7FFF)
            Local6 &= 0x8000
            If ((Local6 == Zero))
            {
                Sleep (\TBOD)
            }
            ElseIf (((Local2 == One) || (Local3 == One)))
            {
                Sleep (Local7)
            }
            Else
            {
                Sleep (0x03E8)
            }

            If (CondRefOf (PDOF))
            {
                If (PSON)
                {
                    PDOF ()
                }
            }
        }

        Method (NFRP, 1, Serialized)
        {
            Local0 = \MMRP (\RPS0, \RPT0)
            OperationRegion (TBDA, SystemMemory, Local0, 0xE0)
            Field (TBDA, WordAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            If ((VDID == 0xFFFFFFFF))
            {
                Return (Zero)
            }

            If ((Arg0 != 0x03))
            {
                Return (Zero)
            }

            Local1 = Zero
            Local2 = Zero
            If ((TBTS == One))
            {
                Notify (^, Zero) // Bus Check
                If ((PMSX == One))
                {
                    Local2 = One
                }

                Notify (^, 0x02) // Device Wake
                Local1 = One
            }

            If ((Local1 == One))
            {
                HPSX = One
                If ((Local2 == One))
                {
                    PMSX = One
                }
            }
        }

        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Method (TBNF, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.RP05, 0x02) // Device Wake
        }
    }

    Scope (\_SB.PCI0.RP09)
    {
        Name (RSTG, Package (0x02)
        {
            0x0402000C, 
            Zero
        })
        Name (PWRG, Package (0x02)
        {
            0x0402000D, 
            One
        })
        Name (SCLK, One)
        Name (LNRD, Zero)
        Method (UPRD, 1, Serialized)
        {
            If ((Arg0 <= 0x2710))
            {
                LNRD = Arg0
            }

            Return (LNRD) /* \_SB_.PCI0.RP09.LNRD */
        }

        Name (WKEN, Zero)
        Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                WKEN = Zero
            }
            ElseIf ((Arg0 && Arg2))
            {
                WKEN = One
            }
            Else
            {
                WKEN = Zero
            }
        }

        PowerResource (PXP, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                PON ()
                L23D ()
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                DL23 ()
                POFF ()
            }
        }

        Method (PSTA, 0, NotSerialized)
        {
            If (\PIN.STA (RSTG))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (PON, 0, NotSerialized)
        {
            \_SB.PSD0 (SLOT)
            If (CondRefOf (PWRG))
            {
                \PIN.ON (PWRG)
                Sleep (PEP0)
            }

            If (CondRefOf (SCLK))
            {
                SPCO (SCLK, One)
            }

            \PIN.OFF (RSTG)
        }

        Method (POFF, 0, NotSerialized)
        {
            Divide (LNRD, 0x03E8, Local0, Local1)
            Sleep (Local1)
            \PIN.ON (RSTG)
            \_SB.PSD3 (SLOT)
            If (CondRefOf (SCLK))
            {
                SPCO (SCLK, Zero)
            }

            If (CondRefOf (PWRG))
            {
                If (CondRefOf (WAKP))
                {
                    If (((WAKP == Zero) || !WKEN))
                    {
                        If (CondRefOf (PCPB))
                        {
                            If ((PCPB != Zero))
                            {
                                \PIN.OFF (PWRG)
                            }
                        }
                        Else
                        {
                            \PIN.OFF (PWRG)
                        }
                    }
                }
                ElseIf (CondRefOf (PCPB))
                {
                    If ((PCPB != Zero))
                    {
                        \PIN.OFF (PWRG)
                    }
                }
                Else
                {
                    \PIN.OFF (PWRG)
                }
            }

            If (CondRefOf (WAKG))
            {
                If (((WAKG != Zero) && WKEN))
                {
                    \_SB.SHPO (WAKG, Zero)
                }
            }
        }

        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Scope (PXSX)
        {
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                If (((PAHC () || PNVM ()) || PRAD ()))
                {
                    If (CondRefOf (^^_PR0))
                    {
                        Return (^^_PR0 ())
                    }
                }

                Return (Package (0x00){})
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                If (((PAHC () || PNVM ()) || PRAD ()))
                {
                    If (CondRefOf (^^_PR0))
                    {
                        Return (^^_PR0 ())
                    }
                }

                Return (Package (0x00){})
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
            }

            Device (MINI)
            {
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (PAHC ())
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Name (_ADR, 0xFFFF)  // _ADR: Address
                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    If (PAHC ())
                    {
                        If (CondRefOf (^^^_PR0))
                        {
                            Return (^^^_PR0 ())
                        }
                    }

                    Return (Package (0x00){})
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If (PAHC ())
                    {
                        If (CondRefOf (^^^_PR0))
                        {
                            Return (^^^_PR0 ())
                        }
                    }

                    Return (Package (0x00){})
                }
            }
        }
    }

    Scope (\_SB.PCI0.SAT0)
    {
        Scope (PRT1)
        {
            Name (PWRG, Package (0x02)
            {
                0x0402000D, 
                One
            })
        }
    }

    Scope (\_SB.PCI0.SAT0)
    {
        OperationRegion (SMIO, PCI_Config, 0x24, 0x04)
        Field (SMIO, AnyAcc, NoLock, Preserve)
        {
            MBR6,   32
        }

        OperationRegion (PCIR, PCI_Config, Zero, 0x10)
        Field (PCIR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0A), 
            SUBC,   8
        }

        If ((One & RCG1))
        {
            Scope (PRT0)
            {
                Name (PBAR, 0x0118)
                If (CondRefOf (PWRG))
                {
                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        Return (Package (0x01)
                        {
                            STPR
                        })
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        Return (Package (0x01)
                        {
                            STPR
                        })
                    }

                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                    {
                        Return (0x04)
                    }

                    PowerResource (STPR, 0x00, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (SPSA ())
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            SPON ()
                            Sleep (0x10)
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            SPOF ()
                        }
                    }

                    Name (OFTM, Zero)
                    Method (SPSA, 0, NotSerialized)
                    {
                        Return (\PIN.STA (PWRG))
                    }

                    Method (SPON, 0, NotSerialized)
                    {
                        \PIN.ON (PWRG)
                    }

                    Method (SPOF, 0, NotSerialized)
                    {
                        Local0 = (\_SB.PCI0.SAT0.MBR6 + PBAR) /* \_SB_.PCI0.SAT0.PRT0.PBAR */
                        If ((S0ID == One))
                        {
                            OperationRegion (PSTS, SystemMemory, Local0, 0x18)
                            Field (PSTS, DWordAcc, NoLock, Preserve)
                            {
                                CMST,   1, 
                                CSUD,   1, 
                                    ,   2, 
                                CFRE,   1, 
                                Offset (0x10), 
                                SDET,   4, 
                                Offset (0x14), 
                                CDET,   4
                            }

                            If (((\_SB.PCI0.SAT0.SUBC == 0x06) && ((SDET == One) || (SDET == 0x03))))
                            {
                                CMST = Zero
                                CFRE = Zero
                                CSUD = Zero
                                CDET = 0x04
                                Sleep (0x10)
                                While ((SDET != 0x04))
                                {
                                    Sleep (0x10)
                                }
                            }
                        }

                        \PIN.OFF (PWRG)
                        ^OFTM = Timer
                    }
                }
            }
        }

        If ((0x02 & RCG1))
        {
            Scope (PRT1)
            {
                Name (PBAR, 0x0198)
                If (CondRefOf (PWRG))
                {
                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        Return (Package (0x01)
                        {
                            STPR
                        })
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        Return (Package (0x01)
                        {
                            STPR
                        })
                    }

                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                    {
                        Return (0x04)
                    }

                    PowerResource (STPR, 0x00, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (SPSA ())
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            SPON ()
                            Sleep (0x10)
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            SPOF ()
                        }
                    }

                    Name (OFTM, Zero)
                    Method (SPSA, 0, NotSerialized)
                    {
                        Return (\PIN.STA (PWRG))
                    }

                    Method (SPON, 0, NotSerialized)
                    {
                        \PIN.ON (PWRG)
                    }

                    Method (SPOF, 0, NotSerialized)
                    {
                        Local0 = (\_SB.PCI0.SAT0.MBR6 + PBAR) /* \_SB_.PCI0.SAT0.PRT1.PBAR */
                        If ((S0ID == One))
                        {
                            OperationRegion (PSTS, SystemMemory, Local0, 0x18)
                            Field (PSTS, DWordAcc, NoLock, Preserve)
                            {
                                CMST,   1, 
                                CSUD,   1, 
                                    ,   2, 
                                CFRE,   1, 
                                Offset (0x10), 
                                SDET,   4, 
                                Offset (0x14), 
                                CDET,   4
                            }

                            If (((\_SB.PCI0.SAT0.SUBC == 0x06) && ((SDET == One) || (SDET == 0x03))))
                            {
                                CMST = Zero
                                CFRE = Zero
                                CSUD = Zero
                                CDET = 0x04
                                Sleep (0x10)
                                While ((SDET != 0x04))
                                {
                                    Sleep (0x10)
                                }
                            }
                        }

                        \PIN.OFF (PWRG)
                        ^OFTM = Timer
                    }
                }
            }
        }

        If ((0x04 & RCG1))
        {
            Scope (PRT2)
            {
                Name (PBAR, 0x0218)
                If (CondRefOf (PWRG))
                {
                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        Return (Package (0x01)
                        {
                            STPR
                        })
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        Return (Package (0x01)
                        {
                            STPR
                        })
                    }

                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                    {
                        Return (0x04)
                    }

                    PowerResource (STPR, 0x00, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (SPSA ())
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            SPON ()
                            Sleep (0x10)
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            SPOF ()
                        }
                    }

                    Name (OFTM, Zero)
                    Method (SPSA, 0, NotSerialized)
                    {
                        Return (\PIN.STA (PWRG))
                    }

                    Method (SPON, 0, NotSerialized)
                    {
                        \PIN.ON (PWRG)
                    }

                    Method (SPOF, 0, NotSerialized)
                    {
                        Local0 = (\_SB.PCI0.SAT0.MBR6 + PBAR) /* \_SB_.PCI0.SAT0.PRT2.PBAR */
                        If ((S0ID == One))
                        {
                            OperationRegion (PSTS, SystemMemory, Local0, 0x18)
                            Field (PSTS, DWordAcc, NoLock, Preserve)
                            {
                                CMST,   1, 
                                CSUD,   1, 
                                    ,   2, 
                                CFRE,   1, 
                                Offset (0x10), 
                                SDET,   4, 
                                Offset (0x14), 
                                CDET,   4
                            }

                            If (((\_SB.PCI0.SAT0.SUBC == 0x06) && ((SDET == One) || (SDET == 0x03))))
                            {
                                CMST = Zero
                                CFRE = Zero
                                CSUD = Zero
                                CDET = 0x04
                                Sleep (0x10)
                                While ((SDET != 0x04))
                                {
                                    Sleep (0x10)
                                }
                            }
                        }

                        \PIN.OFF (PWRG)
                        ^OFTM = Timer
                    }
                }
            }
        }

        If ((0x08 & RCG1))
        {
            Scope (PRT3)
            {
                Name (PBAR, 0x0298)
                If (CondRefOf (PWRG))
                {
                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        Return (Package (0x01)
                        {
                            STPR
                        })
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        Return (Package (0x01)
                        {
                            STPR
                        })
                    }

                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                    {
                        Return (0x04)
                    }

                    PowerResource (STPR, 0x00, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (SPSA ())
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            SPON ()
                            Sleep (0x10)
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            SPOF ()
                        }
                    }

                    Name (OFTM, Zero)
                    Method (SPSA, 0, NotSerialized)
                    {
                        Return (\PIN.STA (PWRG))
                    }

                    Method (SPON, 0, NotSerialized)
                    {
                        \PIN.ON (PWRG)
                    }

                    Method (SPOF, 0, NotSerialized)
                    {
                        Local0 = (\_SB.PCI0.SAT0.MBR6 + PBAR) /* \_SB_.PCI0.SAT0.PRT3.PBAR */
                        If ((S0ID == One))
                        {
                            OperationRegion (PSTS, SystemMemory, Local0, 0x18)
                            Field (PSTS, DWordAcc, NoLock, Preserve)
                            {
                                CMST,   1, 
                                CSUD,   1, 
                                    ,   2, 
                                CFRE,   1, 
                                Offset (0x10), 
                                SDET,   4, 
                                Offset (0x14), 
                                CDET,   4
                            }

                            If (((\_SB.PCI0.SAT0.SUBC == 0x06) && ((SDET == One) || (SDET == 0x03))))
                            {
                                CMST = Zero
                                CFRE = Zero
                                CSUD = Zero
                                CDET = 0x04
                                Sleep (0x10)
                                While ((SDET != 0x04))
                                {
                                    Sleep (0x10)
                                }
                            }
                        }

                        \PIN.OFF (PWRG)
                        ^OFTM = Timer
                    }
                }
            }
        }

        If ((0x10 & RCG1))
        {
            Scope (PRT4)
            {
                Name (PBAR, 0x0318)
                If (CondRefOf (PWRG))
                {
                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        Return (Package (0x01)
                        {
                            STPR
                        })
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        Return (Package (0x01)
                        {
                            STPR
                        })
                    }

                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                    {
                        Return (0x04)
                    }

                    PowerResource (STPR, 0x00, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (SPSA ())
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            SPON ()
                            Sleep (0x10)
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            SPOF ()
                        }
                    }

                    Name (OFTM, Zero)
                    Method (SPSA, 0, NotSerialized)
                    {
                        Return (\PIN.STA (PWRG))
                    }

                    Method (SPON, 0, NotSerialized)
                    {
                        \PIN.ON (PWRG)
                    }

                    Method (SPOF, 0, NotSerialized)
                    {
                        Local0 = (\_SB.PCI0.SAT0.MBR6 + PBAR) /* \_SB_.PCI0.SAT0.PRT4.PBAR */
                        If ((S0ID == One))
                        {
                            OperationRegion (PSTS, SystemMemory, Local0, 0x18)
                            Field (PSTS, DWordAcc, NoLock, Preserve)
                            {
                                CMST,   1, 
                                CSUD,   1, 
                                    ,   2, 
                                CFRE,   1, 
                                Offset (0x10), 
                                SDET,   4, 
                                Offset (0x14), 
                                CDET,   4
                            }

                            If (((\_SB.PCI0.SAT0.SUBC == 0x06) && ((SDET == One) || (SDET == 0x03))))
                            {
                                CMST = Zero
                                CFRE = Zero
                                CSUD = Zero
                                CDET = 0x04
                                Sleep (0x10)
                                While ((SDET != 0x04))
                                {
                                    Sleep (0x10)
                                }
                            }
                        }

                        \PIN.OFF (PWRG)
                        ^OFTM = Timer
                    }
                }
            }
        }

        If ((0x20 & RCG1))
        {
            Scope (PRT5)
            {
                Name (PBAR, 0x0398)
                If (CondRefOf (PWRG))
                {
                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        Return (Package (0x01)
                        {
                            STPR
                        })
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        Return (Package (0x01)
                        {
                            STPR
                        })
                    }

                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                    {
                        Return (0x04)
                    }

                    PowerResource (STPR, 0x00, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (SPSA ())
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            SPON ()
                            Sleep (0x10)
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            SPOF ()
                        }
                    }

                    Name (OFTM, Zero)
                    Method (SPSA, 0, NotSerialized)
                    {
                        Return (\PIN.STA (PWRG))
                    }

                    Method (SPON, 0, NotSerialized)
                    {
                        \PIN.ON (PWRG)
                    }

                    Method (SPOF, 0, NotSerialized)
                    {
                        Local0 = (\_SB.PCI0.SAT0.MBR6 + PBAR) /* \_SB_.PCI0.SAT0.PRT5.PBAR */
                        If ((S0ID == One))
                        {
                            OperationRegion (PSTS, SystemMemory, Local0, 0x18)
                            Field (PSTS, DWordAcc, NoLock, Preserve)
                            {
                                CMST,   1, 
                                CSUD,   1, 
                                    ,   2, 
                                CFRE,   1, 
                                Offset (0x10), 
                                SDET,   4, 
                                Offset (0x14), 
                                CDET,   4
                            }

                            If (((\_SB.PCI0.SAT0.SUBC == 0x06) && ((SDET == One) || (SDET == 0x03))))
                            {
                                CMST = Zero
                                CFRE = Zero
                                CSUD = Zero
                                CDET = 0x04
                                Sleep (0x10)
                                While ((SDET != 0x04))
                                {
                                    Sleep (0x10)
                                }
                            }
                        }

                        \PIN.OFF (PWRG)
                        ^OFTM = Timer
                    }
                }
            }
        }

        If ((0x40 & RCG1))
        {
            Scope (NVM1)
            {
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    Return (0x04)
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    NVPR
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    NVPR
                })
                PowerResource (NVPR, 0x00, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        If (IR3D ())
                        {
                            Return (Zero)
                        }

                        RPON ()
                        _STA = One
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        If (IR3D ())
                        {
                            Return (Zero)
                        }

                        RPOF ()
                        _STA = Zero
                    }
                }
            }
        }

        If ((0x80 & RCG1))
        {
            Scope (NVM2)
            {
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    Return (0x04)
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    NVPR
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    NVPR
                })
                PowerResource (NVPR, 0x00, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        If (IR3D ())
                        {
                            Return (Zero)
                        }

                        RPON ()
                        _STA = One
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        If (IR3D ())
                        {
                            Return (Zero)
                        }

                        RPOF ()
                        _STA = Zero
                    }
                }
            }
        }

        If ((0x0100 & RCG1))
        {
            Scope (NVM3)
            {
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    Return (0x04)
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    NVPR
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    NVPR
                })
                PowerResource (NVPR, 0x00, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        If (IR3D ())
                        {
                            Return (Zero)
                        }

                        RPON ()
                        _STA = One
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        If (IR3D ())
                        {
                            Return (Zero)
                        }

                        RPOF ()
                        _STA = Zero
                    }
                }
            }
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
        Scope (\_SB.PCI0.XHC.RHUB.HS10)
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

    If (\_SB.PCI0.RP14.PXSX.WIST ())
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS05)
        {
            PowerResource (DBTP, 0x00, 0x0000)
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

            Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                DBTP
            })
            Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
            {
                DBTP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                DBTP
            })
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
                If (((^_STA == Zero) && (\UAMS != Zero))){}
                ElseIf ((^PSTA != One))
                {
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
            If ((\_SB.GGOV (0x0401000E) == One))
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (PON, 0, NotSerialized)
        {
            \_SB.SGOV (0x04030009, One)
            \_SB.SGOV (0x0401000E, One)
            ONTM = Timer
            \_SB.SGRA (0x0403000A, One)
        }

        Method (POFF, 0, NotSerialized)
        {
            \_SB.SGRA (0x0403000A, Zero)
            \_SB.SGOV (0x0401000E, Zero)
            \_SB.SGOV (0x04030009, Zero)
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
        Method (AL6F, 0, NotSerialized)
        {
            If (\_SB.ISME (0x0403000B))
            {
                \_SB.SHPO (0x0403000B, One)
                Notify (\_SB.PCI0.RP05, 0x02) // Device Wake
                \_SB.CAGS (0x0403000B)
            }

            If (\_SB.ISME (0x04020005))
            {
                \_SB.SHPO (0x04020005, One)
                Notify (\_SB.PCI0.RP14, 0x02) // Device Wake
                \_SB.CAGS (0x04020005)
            }

            If (\_SB.ISME (0x0400000B))
            {
                \_SB.SHPO (0x0400000B, One)
                Notify (\_SB.PCI0.RP02, 0x02) // Device Wake
                \_SB.CAGS (0x0400000B)
            }
        }
    }
}

