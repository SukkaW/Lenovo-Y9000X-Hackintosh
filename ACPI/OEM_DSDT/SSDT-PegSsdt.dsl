/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-PegSsdt.bin, Mon Apr 12 05:08:55 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000020B7 (8375)
 *     Revision         0x02
 *     Checksum         0x21
 *     OEM ID           "PegSsd"
 *     OEM Table ID     "PegSsdt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "PegSsd", "PegSsdt", 0x00001000)
{
    External (_SB_.CAGS, MethodObj)    // 1 Arguments
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.ISME, MethodObj)    // 1 Arguments
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.AR0A, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.AR0B, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PD0A, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PD0B, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG1, DeviceObj)
    External (_SB_.PCI0.PEG1.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG1.PINI, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG1.PPBA, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.PEG2, DeviceObj)
    External (_SB_.PCI0.PEG2.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG2.PINI, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG2.PPBA, MethodObj)    // 1 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (AR02, UnknownObj)
    External (AR0A, UnknownObj)
    External (AR0B, UnknownObj)
    External (CPEX, UnknownObj)
    External (DLHR, UnknownObj)
    External (DLPW, UnknownObj)
    External (ECR1, UnknownObj)
    External (EEC1, UnknownObj)
    External (EEC2, UnknownObj)
    External (EECP, UnknownObj)
    External (GBAS, UnknownObj)
    External (GPRW, MethodObj)    // 2 Arguments
    External (HRA0, UnknownObj)
    External (HRA1, UnknownObj)
    External (HRA2, UnknownObj)
    External (HRE0, UnknownObj)
    External (HRE1, UnknownObj)
    External (HRE2, UnknownObj)
    External (HRG0, UnknownObj)
    External (HRG1, UnknownObj)
    External (HRG2, UnknownObj)
    External (LTRW, UnknownObj)
    External (LTRX, UnknownObj)
    External (LTRY, UnknownObj)
    External (LTRZ, UnknownObj)
    External (OBFA, UnknownObj)
    External (OBFX, UnknownObj)
    External (OBFY, UnknownObj)
    External (OBFZ, UnknownObj)
    External (OSYS, UnknownObj)
    External (P0UB, UnknownObj)
    External (P0WK, UnknownObj)
    External (P1GP, UnknownObj)
    External (P1UB, UnknownObj)
    External (P1WK, UnknownObj)
    External (P2GP, UnknownObj)
    External (P2UB, UnknownObj)
    External (P2WK, UnknownObj)
    External (PBGE, UnknownObj)
    External (PCPB, UnknownObj)
    External (PCSL, UnknownObj)
    External (PD02, UnknownObj)
    External (PD0A, UnknownObj)
    External (PD0B, UnknownObj)
    External (PICM, UnknownObj)
    External (PWA0, UnknownObj)
    External (PWA1, UnknownObj)
    External (PWA2, UnknownObj)
    External (PWE0, UnknownObj)
    External (PWE1, UnknownObj)
    External (PWE2, UnknownObj)
    External (PWG0, UnknownObj)
    External (PWG1, UnknownObj)
    External (PWG2, UnknownObj)
    External (SBN0, UnknownObj)
    External (SBN1, UnknownObj)
    External (SBN2, UnknownObj)
    External (SCLK, UnknownObj)
    External (SGGP, UnknownObj)
    External (SGMD, UnknownObj)
    External (SMSL, UnknownObj)
    External (SNSL, UnknownObj)
    External (SPCO, MethodObj)    // 2 Arguments
    External (XBAS, UnknownObj)

    Scope (\_GPE)
    {
        Method (P0L6, 0, NotSerialized)
        {
            If (\_SB.ISME (P0WK))
            {
                \_SB.SHPO (P0WK, One)
                Notify (\_SB.PCI0.PEG0, 0x02) // Device Wake
                \_SB.CAGS (P0WK)
            }
        }

        Method (P1L6, 0, NotSerialized)
        {
            If (\_SB.ISME (P1WK))
            {
                \_SB.SHPO (P1WK, One)
                Notify (\_SB.PCI0.PEG1, 0x02) // Device Wake
                \_SB.CAGS (P1WK)
            }
        }

        Method (P2L6, 0, NotSerialized)
        {
            If (\_SB.ISME (P2WK))
            {
                \_SB.SHPO (P2WK, One)
                Notify (\_SB.PCI0.PEG2, 0x02) // Device Wake
                \_SB.CAGS (P2WK)
            }
        }
    }

    Scope (\_SB.PCI0.PEG0)
    {
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }
    }

    Scope (\_SB.PCI0.PEG1)
    {
        Name (WKEN, Zero)
        OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
        Field (PEGR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            PSTS,   1, 
            Offset (0x2C), 
            GENG,   1, 
                ,   1, 
            PMEG,   1
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }

        Method (HPME, 0, Serialized)
        {
            PSTS = One
        }

        Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
        {
            If (PICM)
            {
                Return (AR0A ())
            }

            Return (PD0A ())
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (PRES ())
            {
                LTRS = LTRY /* External reference */
                OBFS = OBFY /* External reference */
                If (CondRefOf (PINI))
                {
                    PINI ()
                }
            }
        }

        Name (LTRV, Package (0x04)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        OperationRegion (PXCS, PCI_Config, Zero, 0x0480)
        Field (PXCS, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        Method (PRES, 0, NotSerialized)
        {
            If ((VDID == 0xFFFFFFFF))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Name (LNRD, Zero)
        Method (UPRD, 1, Serialized)
        {
            If ((Arg0 <= 0x2710))
            {
                LNRD = Arg0
            }

            Return (LNRD) /* \_SB_.PCI0.PEG1.LNRD */
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Name (DSMF, Buffer (0x02)
                        {
                             0x00, 0x00                                       // ..
                        })
                        CreateBitField (DSMF, Zero, FUN0)
                        CreateBitField (DSMF, 0x04, FUN4)
                        CreateBitField (DSMF, 0x06, FUN6)
                        CreateBitField (DSMF, 0x08, FUN8)
                        CreateBitField (DSMF, 0x09, FUN9)
                        CreateBitField (DSMF, 0x0A, FUNA)
                        CreateBitField (DSMF, 0x0B, FUNB)
                        FUN0 = One
                        If ((Arg1 >= 0x02))
                        {
                            If (LTRS)
                            {
                                FUN6 = One
                            }

                            If (OBFS)
                            {
                                FUN4 = One
                            }
                        }

                        If ((Arg1 >= 0x03))
                        {
                            If (ECR1)
                            {
                                FUN8 = One
                            }

                            If (ECR1)
                            {
                                FUN9 = One
                            }
                        }

                        If ((Arg1 >= 0x04))
                        {
                            If (CondRefOf (PPBA))
                            {
                                FUNA = One
                            }

                            FUNB = One
                        }

                        Return (DSMF) /* \_SB_.PCI0.PEG1._DSM.DSMF */
                    }
                    Case (0x04)
                    {
                        If ((Arg1 >= 0x02))
                        {
                            If (OBFS)
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                })
                            }
                            Else
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                })
                            }
                        }
                    }
                    Case (0x06)
                    {
                        If ((Arg1 >= 0x02))
                        {
                            If (LTRS)
                            {
                                LTRV [Zero] = ((SMSL >> 0x0A) & 0x07)
                                LTRV [One] = (SMSL & 0x03FF)
                                LTRV [0x02] = ((SNSL >> 0x0A) & 0x07)
                                LTRV [0x03] = (SNSL & 0x03FF)
                                Return (LTRV) /* \_SB_.PCI0.PEG1.LTRV */
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    Case (0x08)
                    {
                        If ((ECR1 == One))
                        {
                            If ((Arg1 >= 0x03))
                            {
                                Return (One)
                            }
                        }
                    }
                    Case (0x09)
                    {
                        If ((ECR1 == One))
                        {
                            If ((Arg1 >= 0x03))
                            {
                                Return (Package (0x05)
                                {
                                    0xC350, 
                                    Ones, 
                                    Ones, 
                                    0xC350, 
                                    Ones
                                })
                            }
                        }
                    }
                    Case (0x0A)
                    {
                        If (CondRefOf (PPBA))
                        {
                            Return (PPBA (Arg3))
                        }
                    }
                    Case (0x0B)
                    {
                        Return (UPRD (Arg3))
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }

        PowerResource (PG01, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Name (SCLK, 0x08)
            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                If ((OSYS > 0x07D9))
                {
                    PGON (One)
                    _STA = One
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                If ((OSYS > 0x07D9))
                {
                    PGOF (One)
                    _STA = Zero
                }
            }
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            PG01
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            PG01
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            PG01
        })
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

        Method (P1EW, 0, NotSerialized)
        {
            If (WKEN)
            {
                If ((P1GP != Zero))
                {
                    If ((P1GP == One))
                    {
                        \_SB.SGOV (P1WK, One)
                        \_SB.SHPO (P1WK, Zero)
                    }
                }
            }
        }

        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            Return (0x04)
        }
    }

    Scope (\_SB.PCI0.PEG1.PEGP)
    {
        OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
        Field (PCIS, AnyAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }
    }

    Scope (\_SB.PCI0.PEG2)
    {
        Name (WKEN, Zero)
        OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
        Field (PEGR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            PSTS,   1, 
            Offset (0x2C), 
            GENG,   1, 
                ,   1, 
            PMEG,   1
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }

        Method (HPME, 0, Serialized)
        {
            PSTS = One
        }

        Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
        {
            If (PICM)
            {
                Return (AR0B ())
            }

            Return (PD0B ())
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (PRES ())
            {
                LTRS = LTRZ /* External reference */
                OBFS = OBFZ /* External reference */
                If (CondRefOf (PINI))
                {
                    PINI ()
                }
            }
        }

        Name (LTRV, Package (0x04)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        OperationRegion (PXCS, PCI_Config, Zero, 0x0480)
        Field (PXCS, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        Method (PRES, 0, NotSerialized)
        {
            If ((VDID == 0xFFFFFFFF))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Name (LNRD, Zero)
        Method (UPRD, 1, Serialized)
        {
            If ((Arg0 <= 0x2710))
            {
                LNRD = Arg0
            }

            Return (LNRD) /* \_SB_.PCI0.PEG2.LNRD */
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Name (DSMF, Buffer (0x02)
                        {
                             0x00, 0x00                                       // ..
                        })
                        CreateBitField (DSMF, Zero, FUN0)
                        CreateBitField (DSMF, 0x04, FUN4)
                        CreateBitField (DSMF, 0x06, FUN6)
                        CreateBitField (DSMF, 0x08, FUN8)
                        CreateBitField (DSMF, 0x09, FUN9)
                        CreateBitField (DSMF, 0x0A, FUNA)
                        CreateBitField (DSMF, 0x0B, FUNB)
                        FUN0 = One
                        If ((Arg1 >= 0x02))
                        {
                            If (LTRS)
                            {
                                FUN6 = One
                            }

                            If (OBFS)
                            {
                                FUN4 = One
                            }
                        }

                        If ((Arg1 >= 0x03))
                        {
                            If (ECR1)
                            {
                                FUN8 = One
                            }

                            If (ECR1)
                            {
                                FUN9 = One
                            }
                        }

                        If ((Arg1 >= 0x04))
                        {
                            If (CondRefOf (PPBA))
                            {
                                FUNA = One
                            }

                            FUNB = One
                        }

                        Return (DSMF) /* \_SB_.PCI0.PEG2._DSM.DSMF */
                    }
                    Case (0x04)
                    {
                        If ((Arg1 >= 0x02))
                        {
                            If (OBFS)
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                })
                            }
                            Else
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                })
                            }
                        }
                    }
                    Case (0x06)
                    {
                        If ((Arg1 >= 0x02))
                        {
                            If (LTRS)
                            {
                                LTRV [Zero] = ((SMSL >> 0x0A) & 0x07)
                                LTRV [One] = (SMSL & 0x03FF)
                                LTRV [0x02] = ((SNSL >> 0x0A) & 0x07)
                                LTRV [0x03] = (SNSL & 0x03FF)
                                Return (LTRV) /* \_SB_.PCI0.PEG2.LTRV */
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    Case (0x08)
                    {
                        If ((ECR1 == One))
                        {
                            If ((Arg1 >= 0x03))
                            {
                                Return (One)
                            }
                        }
                    }
                    Case (0x09)
                    {
                        If ((ECR1 == One))
                        {
                            If ((Arg1 >= 0x03))
                            {
                                Return (Package (0x05)
                                {
                                    0xC350, 
                                    Ones, 
                                    Ones, 
                                    0xC350, 
                                    Ones
                                })
                            }
                        }
                    }
                    Case (0x0A)
                    {
                        If (CondRefOf (PPBA))
                        {
                            Return (PPBA (Arg3))
                        }
                    }
                    Case (0x0B)
                    {
                        Return (UPRD (Arg3))
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }

        PowerResource (PG02, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Name (SCLK, 0x08)
            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                If ((OSYS > 0x07D9))
                {
                    PGON (0x02)
                    _STA = One
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                If ((OSYS > 0x07D9))
                {
                    PGOF (0x02)
                    _STA = Zero
                }
            }
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            PG02
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            PG02
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            PG02
        })
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

        Method (P2EW, 0, NotSerialized)
        {
            If (WKEN)
            {
                If ((P2GP != Zero))
                {
                    If ((P2GP == One))
                    {
                        \_SB.SGOV (P2WK, One)
                        \_SB.SHPO (P2WK, Zero)
                    }
                }
            }
        }

        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            Return (0x04)
        }
    }

    Scope (\_SB.PCI0.PEG2.PEGP)
    {
        OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
        Field (PCIS, AnyAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (IVID, 0xFFFF)
        Name (PEBA, Zero)
        Name (PION, Zero)
        Name (PIOF, Zero)
        Name (PBUS, Zero)
        Name (PDEV, Zero)
        Name (PFUN, Zero)
        Name (EBUS, Zero)
        Name (EDEV, Zero)
        Name (EFN0, Zero)
        Name (EFN1, One)
        Name (LTRS, Zero)
        Name (OBFS, Zero)
        Name (INDX, Zero)
        Name (DSOF, 0x06)
        Name (CPOF, 0x34)
        Name (SBOF, 0x19)
        Name (ELC0, Zero)
        Name (ECP0, 0xFFFFFFFF)
        Name (H0VI, Zero)
        Name (H0DI, Zero)
        Name (ELC1, Zero)
        Name (ECP1, 0xFFFFFFFF)
        Name (H1VI, Zero)
        Name (H1DI, Zero)
        Name (ELC2, Zero)
        Name (ECP2, 0xFFFFFFFF)
        Name (H2VI, Zero)
        Name (H2DI, Zero)
        Name (TIDX, Zero)
        Name (OTSD, Zero)
        Name (MXPG, 0x03)
        Name (FBDL, Zero)
        Name (CBDL, Zero)
        Name (MBDL, Zero)
        Name (HSTR, Zero)
        Name (LREV, Zero)
        Name (TCNT, Zero)
        Name (LDLY, 0x012C)
        OperationRegion (OPG0, SystemMemory, (XBAS + 0x8000), 0x1000)
        Field (OPG0, AnyAcc, NoLock, Preserve)
        {
            P0VI,   16, 
            P0DI,   16, 
            Offset (0x06), 
            DSO0,   16, 
            Offset (0x34), 
            CPO0,   8, 
            Offset (0xB0), 
                ,   4, 
            P0LD,   1, 
            Offset (0x11A), 
                ,   1, 
            P0VC,   1, 
            Offset (0x214), 
            Offset (0x216), 
            P0LS,   4, 
            Offset (0x248), 
                ,   7, 
            Q0L2,   1, 
            Q0L0,   1, 
            Offset (0x504), 
            HST0,   32, 
            P0TR,   1, 
            Offset (0x91C), 
                ,   31, 
            BSP1,   1, 
            Offset (0x93C), 
                ,   31, 
            BSP2,   1, 
            Offset (0x95C), 
                ,   31, 
            BSP3,   1, 
            Offset (0x97C), 
                ,   31, 
            BSP4,   1, 
            Offset (0x99C), 
                ,   31, 
            BSP5,   1, 
            Offset (0x9BC), 
                ,   31, 
            BSP6,   1, 
            Offset (0x9DC), 
                ,   31, 
            BSP7,   1, 
            Offset (0x9FC), 
                ,   31, 
            BSP8,   1, 
            Offset (0xC20), 
                ,   4, 
            P0AP,   2, 
            Offset (0xC38), 
                ,   3, 
            P0RM,   1, 
            Offset (0xC74), 
            P0LT,   4, 
            Offset (0xD0C), 
            LRV0,   32
        }

        OperationRegion (PCS0, SystemMemory, (XBAS + (SBN0 << 0x14)), 0xF0)
        Field (PCS0, DWordAcc, Lock, Preserve)
        {
            D0VI,   16, 
            Offset (0x2C), 
            S0VI,   16, 
            S0DI,   16
        }

        OperationRegion (CAP0, SystemMemory, ((XBAS + (SBN0 << 0x14)) + EECP), 0x14)
        Field (CAP0, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            LCP0,   32, 
            LCT0,   16
        }

        OperationRegion (OPG1, SystemMemory, (XBAS + 0x9000), 0x1000)
        Field (OPG1, AnyAcc, NoLock, Preserve)
        {
            P1VI,   16, 
            P1DI,   16, 
            Offset (0x06), 
            DSO1,   16, 
            Offset (0x34), 
            CPO1,   8, 
            Offset (0xB0), 
                ,   4, 
            P1LD,   1, 
            Offset (0x11A), 
                ,   1, 
            P1VC,   1, 
            Offset (0x214), 
            Offset (0x216), 
            P1LS,   4, 
            Offset (0x248), 
                ,   7, 
            Q1L2,   1, 
            Q1L0,   1, 
            Offset (0x504), 
            HST1,   32, 
            P1TR,   1, 
            Offset (0xC20), 
                ,   4, 
            P1AP,   2, 
            Offset (0xC38), 
                ,   3, 
            P1RM,   1, 
            Offset (0xC74), 
            P1LT,   4, 
            Offset (0xD0C), 
            LRV1,   32
        }

        OperationRegion (PCS1, SystemMemory, (XBAS + (SBN1 << 0x14)), 0xF0)
        Field (PCS1, DWordAcc, Lock, Preserve)
        {
            D1VI,   16, 
            Offset (0x2C), 
            S1VI,   16, 
            S1DI,   16
        }

        OperationRegion (CAP1, SystemMemory, ((XBAS + (SBN1 << 0x14)) + EEC1), 0x14)
        Field (CAP1, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            LCP1,   32, 
            LCT1,   16
        }

        OperationRegion (OPG2, SystemMemory, (XBAS + 0xA000), 0x1000)
        Field (OPG2, AnyAcc, NoLock, Preserve)
        {
            P2VI,   16, 
            P2DI,   16, 
            Offset (0x06), 
            DSO2,   16, 
            Offset (0x34), 
            CPO2,   8, 
            Offset (0xB0), 
                ,   4, 
            P2LD,   1, 
            Offset (0x11A), 
                ,   1, 
            P2VC,   1, 
            Offset (0x214), 
            Offset (0x216), 
            P2LS,   4, 
            Offset (0x248), 
                ,   7, 
            Q2L2,   1, 
            Q2L0,   1, 
            Offset (0x504), 
            HST2,   32, 
            P2TR,   1, 
            Offset (0xC20), 
                ,   4, 
            P2AP,   2, 
            Offset (0xC38), 
                ,   3, 
            P2RM,   1, 
            Offset (0xC74), 
            P2LT,   4, 
            Offset (0xD0C), 
            LRV2,   32
        }

        OperationRegion (PCS2, SystemMemory, (XBAS + (SBN2 << 0x14)), 0xF0)
        Field (PCS2, DWordAcc, Lock, Preserve)
        {
            D2VI,   16, 
            Offset (0x2C), 
            S2VI,   16, 
            S2DI,   16
        }

        OperationRegion (CAP2, SystemMemory, ((XBAS + (SBN2 << 0x14)) + EEC2), 0x14)
        Field (CAP2, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            LCP2,   32, 
            LCT2,   16
        }

        Method (PGON, 1, Serialized)
        {
            PION = Arg0
            If ((PION == Zero))
            {
                If ((SGGP == Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf ((PION == One))
            {
                If ((P1GP == Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf ((PION == 0x02))
            {
                If ((P2GP == Zero))
                {
                    Return (Zero)
                }
            }

            PEBA = \XBAS /* External reference */
            PDEV = GDEV (PION)
            PFUN = GFUN (PION)
            If (CondRefOf (SCLK))
            {
                SPCO (SCLK, One)
            }

            If ((CCHK (PION, One) == Zero))
            {
                Return (Zero)
            }

            GPPR (PION, One)
            RTEN (PION)
            If ((PBGE != Zero))
            {
                If (SBDL (PION))
                {
                    PUAB (PION)
                    CBDL = GUBC (PION)
                    MBDL = GMXB (PION)
                    If ((CBDL > MBDL))
                    {
                        CBDL = MBDL /* \_SB_.PCI0.MBDL */
                    }

                    PDUB (PION, CBDL)
                }
            }

            If ((PION == Zero))
            {
                S0VI = H0VI /* \_SB_.PCI0.H0VI */
                S0DI = H0DI /* \_SB_.PCI0.H0DI */
                LCT0 = ((ELC0 & 0x43) | (LCT0 & 0xFFBC))
            }
            ElseIf ((PION == One))
            {
                S1VI = H1VI /* \_SB_.PCI0.H1VI */
                S1DI = H1DI /* \_SB_.PCI0.H1DI */
                LCT1 = ((ELC1 & 0x43) | (LCT1 & 0xFFBC))
            }
            ElseIf ((PION == 0x02))
            {
                S2VI = H2VI /* \_SB_.PCI0.H2VI */
                S2DI = H2DI /* \_SB_.PCI0.H2DI */
                LCT2 = ((ELC2 & 0x43) | (LCT2 & 0xFFBC))
            }

            Return (Zero)
        }

        Method (PGOF, 1, Serialized)
        {
            PIOF = Arg0
            If ((PIOF == Zero))
            {
                If ((SGGP == Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf ((PIOF == One))
            {
                If ((P1GP == Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf ((PIOF == 0x02))
            {
                If ((P2GP == Zero))
                {
                    Return (Zero)
                }
            }

            PEBA = \XBAS /* External reference */
            PDEV = GDEV (PIOF)
            PFUN = GFUN (PIOF)
            If ((CCHK (PIOF, Zero) == Zero))
            {
                Return (Zero)
            }

            If ((Arg0 == Zero))
            {
                ELC0 = LCT0 /* \_SB_.PCI0.LCT0 */
                H0VI = S0VI /* \_SB_.PCI0.S0VI */
                H0DI = S0DI /* \_SB_.PCI0.S0DI */
                ECP0 = LCP0 /* \_SB_.PCI0.LCP0 */
            }
            ElseIf ((Arg0 == One))
            {
                ELC1 = LCT1 /* \_SB_.PCI0.LCT1 */
                H1VI = S1VI /* \_SB_.PCI0.S1VI */
                H1DI = S1DI /* \_SB_.PCI0.S1DI */
                ECP1 = LCP1 /* \_SB_.PCI0.LCP1 */
            }
            ElseIf ((Arg0 == 0x02))
            {
                ELC2 = LCT2 /* \_SB_.PCI0.LCT2 */
                H2VI = S2VI /* \_SB_.PCI0.S2VI */
                H2DI = S2DI /* \_SB_.PCI0.S2DI */
                ECP2 = LCP2 /* \_SB_.PCI0.LCP2 */
            }

            RTDS (PIOF)
            If ((PBGE != Zero))
            {
                If (SBDL (PIOF))
                {
                    MBDL = GMXB (PIOF)
                    PDUB (PIOF, MBDL)
                }
            }

            If (CondRefOf (SCLK))
            {
                SPCO (SCLK, Zero)
            }

            If ((Arg0 == Zero)){}
            ElseIf ((Arg0 == One))
            {
                Divide (\_SB.PCI0.PEG1.LNRD, 0x03E8, Local0, Local1)
                Sleep (Local1)
            }
            ElseIf ((Arg0 == 0x02))
            {
                Divide (\_SB.PCI0.PEG2.LNRD, 0x03E8, Local0, Local1)
                Sleep (Local1)
            }

            GPPR (PIOF, Zero)
            DIWK (PIOF)
            Return (Zero)
        }

        Method (MMRD, 5, Serialized)
        {
            Local7 = Arg0
            Local7 |= (Arg1 << 0x14)
            Local7 |= (Arg2 << 0x0F)
            Local7 |= (Arg3 << 0x0C)
            Local7 |= Arg4
            OperationRegion (PCI0, SystemMemory, Local7, 0x04)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Return (TEMP) /* \_SB_.PCI0.MMRD.TEMP */
        }

        Method (GULC, 1, NotSerialized)
        {
            Local7 = MMRD (PEBA, PBUS, PDEV, PFUN, 0xAC)
            Local7 >>= 0x04
            Local7 &= 0x3F
            Local6 = Arg0
            Local6 >>= 0x04
            Local6 &= 0x3F
            If ((Local7 > Local6))
            {
                Local0 = (Local7 - Local6)
            }
            Else
            {
                Local0 = Zero
            }

            Return (Local0)
        }

        Method (GMXB, 1, NotSerialized)
        {
            If ((Arg0 == Zero))
            {
                HSTR = HST0 /* \_SB_.PCI0.HST0 */
            }
            ElseIf ((Arg0 == One))
            {
                HSTR = HST1 /* \_SB_.PCI0.HST1 */
            }
            ElseIf ((Arg0 == 0x02))
            {
                HSTR = HST2 /* \_SB_.PCI0.HST2 */
            }

            HSTR >>= 0x10
            HSTR &= 0x03
            If ((Arg0 == Zero))
            {
                If ((HSTR == 0x03))
                {
                    Local0 = 0x08
                }
                Else
                {
                    Local0 = 0x04
                }
            }
            ElseIf ((Arg0 == One))
            {
                If ((HSTR == 0x02))
                {
                    Local0 = 0x04
                }
                ElseIf ((HSTR == Zero))
                {
                    Local0 = 0x02
                }
            }
            ElseIf ((Arg0 == 0x02))
            {
                If ((HSTR == Zero))
                {
                    Local0 = 0x02
                }
                ElseIf ((HSTR == One))
                {
                    Local0 = 0x02
                }
            }

            Return (Local0)
        }

        Method (PUAB, 1, NotSerialized)
        {
            FBDL = Zero
            CBDL = Zero
            If ((Arg0 == Zero))
            {
                HSTR = HST0 /* \_SB_.PCI0.HST0 */
                LREV = LRV0 /* \_SB_.PCI0.LRV0 */
            }
            ElseIf ((Arg0 == One))
            {
                HSTR = HST1 /* \_SB_.PCI0.HST1 */
                LREV = LRV1 /* \_SB_.PCI0.LRV1 */
            }
            ElseIf ((Arg0 == 0x02))
            {
                HSTR = HST2 /* \_SB_.PCI0.HST2 */
                LREV = LRV2 /* \_SB_.PCI0.LRV2 */
            }

            HSTR >>= 0x10
            HSTR &= 0x03
            LREV >>= 0x14
            LREV &= One
            If ((Arg0 == Zero))
            {
                If ((HSTR == 0x03))
                {
                    FBDL = Zero
                    CBDL = 0x08
                }
                ElseIf ((LREV == Zero))
                {
                    FBDL = Zero
                    CBDL = 0x04
                }
                Else
                {
                    FBDL = 0x04
                    CBDL = 0x04
                }
            }
            ElseIf ((Arg0 == One))
            {
                If ((HSTR == 0x02))
                {
                    If ((LREV == Zero))
                    {
                        FBDL = 0x04
                        CBDL = 0x04
                    }
                    Else
                    {
                        FBDL = Zero
                        CBDL = 0x04
                    }
                }
                ElseIf ((HSTR == Zero))
                {
                    If ((LREV == Zero))
                    {
                        FBDL = 0x04
                        CBDL = 0x02
                    }
                    Else
                    {
                        FBDL = 0x02
                        CBDL = 0x02
                    }
                }
            }
            ElseIf ((Arg0 == 0x02))
            {
                If ((HSTR == Zero))
                {
                    If ((LREV == Zero))
                    {
                        FBDL = 0x06
                        CBDL = 0x02
                    }
                    Else
                    {
                        FBDL = Zero
                        CBDL = 0x02
                    }
                }
                ElseIf ((HSTR == One))
                {
                    If ((LREV == Zero))
                    {
                        FBDL = 0x06
                        CBDL = 0x02
                    }
                    Else
                    {
                        FBDL = Zero
                        CBDL = 0x02
                    }
                }
            }

            INDX = One
            If ((CBDL != Zero))
            {
                While ((INDX <= CBDL))
                {
                    If ((P0VI == IVID)){}
                    ElseIf ((P0VI != IVID))
                    {
                        If ((FBDL == Zero))
                        {
                            BSP1 = Zero
                        }

                        If ((FBDL == One))
                        {
                            BSP2 = Zero
                        }

                        If ((FBDL == 0x02))
                        {
                            BSP3 = Zero
                        }

                        If ((FBDL == 0x03))
                        {
                            BSP4 = Zero
                        }

                        If ((FBDL == 0x04))
                        {
                            BSP5 = Zero
                        }

                        If ((FBDL == 0x05))
                        {
                            BSP6 = Zero
                        }

                        If ((FBDL == 0x06))
                        {
                            BSP7 = Zero
                        }

                        If ((FBDL == 0x07))
                        {
                            BSP8 = Zero
                        }
                    }

                    FBDL++
                    INDX++
                }
            }
        }

        Method (PDUB, 2, NotSerialized)
        {
            FBDL = Zero
            CBDL = Arg1
            If ((CBDL == Zero))
            {
                Return (Zero)
            }

            If ((Arg0 == Zero))
            {
                HSTR = HST0 /* \_SB_.PCI0.HST0 */
                LREV = LRV0 /* \_SB_.PCI0.LRV0 */
            }
            ElseIf ((Arg0 == One))
            {
                HSTR = HST1 /* \_SB_.PCI0.HST1 */
                LREV = LRV1 /* \_SB_.PCI0.LRV1 */
            }
            ElseIf ((Arg0 == 0x02))
            {
                HSTR = HST2 /* \_SB_.PCI0.HST2 */
                LREV = LRV2 /* \_SB_.PCI0.LRV2 */
            }

            HSTR >>= 0x10
            HSTR &= 0x03
            LREV >>= 0x14
            LREV &= One
            If ((Arg0 == Zero))
            {
                If ((HSTR == 0x03))
                {
                    If ((LREV == Zero))
                    {
                        FBDL = (0x08 - CBDL)
                    }
                    Else
                    {
                        FBDL = Zero
                    }
                }
                ElseIf ((LREV == Zero))
                {
                    FBDL = (0x04 - CBDL)
                }
                Else
                {
                    FBDL = 0x04
                }
            }
            ElseIf ((Arg0 == One))
            {
                If ((HSTR == 0x02))
                {
                    If ((LREV == Zero))
                    {
                        FBDL = (0x08 - CBDL)
                    }
                    Else
                    {
                        FBDL = Zero
                    }
                }
                ElseIf ((HSTR == Zero))
                {
                    If ((LREV == Zero))
                    {
                        FBDL = (0x06 - CBDL)
                    }
                    Else
                    {
                        FBDL = 0x02
                    }
                }
            }
            ElseIf ((Arg0 == 0x02))
            {
                If ((HSTR == Zero))
                {
                    If ((LREV == Zero))
                    {
                        FBDL = (0x08 - CBDL)
                    }
                    Else
                    {
                        FBDL = Zero
                    }
                }
                ElseIf ((HSTR == One))
                {
                    If ((LREV == Zero))
                    {
                        FBDL = (0x08 - CBDL)
                    }
                    Else
                    {
                        FBDL = Zero
                    }
                }
            }

            INDX = One
            While ((INDX <= CBDL))
            {
                If ((P0VI == IVID)){}
                ElseIf ((P0VI != IVID))
                {
                    If ((FBDL == Zero))
                    {
                        BSP1 = One
                    }

                    If ((FBDL == One))
                    {
                        BSP2 = One
                    }

                    If ((FBDL == 0x02))
                    {
                        BSP3 = One
                    }

                    If ((FBDL == 0x03))
                    {
                        BSP4 = One
                    }

                    If ((FBDL == 0x04))
                    {
                        BSP5 = One
                    }

                    If ((FBDL == 0x05))
                    {
                        BSP6 = One
                    }

                    If ((FBDL == 0x06))
                    {
                        BSP7 = One
                    }

                    If ((FBDL == 0x07))
                    {
                        BSP8 = One
                    }
                }

                FBDL++
                INDX++
            }
        }

        Method (SBDL, 1, NotSerialized)
        {
            If ((Arg0 == Zero))
            {
                If ((P0UB == Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf ((Arg0 == One))
            {
                If ((P1UB == Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf ((Arg0 == 0x02))
            {
                If ((P2UB == Zero))
                {
                    Return (Zero)
                }
            }
            Else
            {
                Return (Zero)
            }

            Return (One)
        }

        Method (GUBC, 1, NotSerialized)
        {
            Local7 = Zero
            If ((Arg0 == Zero))
            {
                Local6 = LCP0 /* \_SB_.PCI0.LCP0 */
            }
            ElseIf ((Arg0 == One))
            {
                Local6 = LCP1 /* \_SB_.PCI0.LCP1 */
            }
            ElseIf ((Arg0 == 0x02))
            {
                Local6 = LCP2 /* \_SB_.PCI0.LCP2 */
            }

            If ((Arg0 == Zero))
            {
                If ((P0UB == 0xFF))
                {
                    Local5 = GULC (Local6)
                    Local7 = (Local5 / 0x02)
                }
                ElseIf ((P0UB != Zero))
                {
                    Local7 = P0UB /* External reference */
                }
            }
            ElseIf ((Arg0 == One))
            {
                If ((P1UB == 0xFF))
                {
                    Local5 = GULC (Local6)
                    Local7 = (Local5 / 0x02)
                }
                ElseIf ((P1UB != Zero))
                {
                    Local7 = P1UB /* External reference */
                }
            }
            ElseIf ((Arg0 == 0x02))
            {
                If ((P2UB == 0xFF))
                {
                    Local5 = GULC (Local6)
                    Local7 = (Local5 / 0x02)
                }
                ElseIf ((P2UB != Zero))
                {
                    Local7 = P2UB /* External reference */
                }
            }

            Return (Local7)
        }

        Method (DIWK, 1, NotSerialized)
        {
            If ((Arg0 == Zero)){}
            ElseIf ((Arg0 == One))
            {
                \_SB.PCI0.PEG1.P1EW ()
            }
            ElseIf ((Arg0 == 0x02))
            {
                \_SB.PCI0.PEG2.P2EW ()
            }
        }

        Method (GDEV, 1, NotSerialized)
        {
            If ((Arg0 == Zero))
            {
                Local0 = One
            }
            ElseIf ((Arg0 == One))
            {
                Local0 = One
            }
            ElseIf ((Arg0 == 0x02))
            {
                Local0 = One
            }

            Return (Local0)
        }

        Method (GFUN, 1, NotSerialized)
        {
            If ((Arg0 == Zero))
            {
                Local0 = Zero
            }
            ElseIf ((Arg0 == One))
            {
                Local0 = One
            }
            ElseIf ((Arg0 == 0x02))
            {
                Local0 = 0x02
            }

            Return (Local0)
        }

        Method (CCHK, 2, NotSerialized)
        {
            If ((Arg0 == Zero))
            {
                Local7 = P0VI /* \_SB_.PCI0.P0VI */
            }
            ElseIf ((Arg0 == One))
            {
                Local7 = P1VI /* \_SB_.PCI0.P1VI */
            }
            ElseIf ((Arg0 == 0x02))
            {
                Local7 = P2VI /* \_SB_.PCI0.P2VI */
            }

            If ((Local7 == IVID))
            {
                Return (Zero)
            }

            If ((Arg0 != Zero))
            {
                Local7 = P0VI /* \_SB_.PCI0.P0VI */
                If ((Local7 == IVID))
                {
                    Return (Zero)
                }
            }

            If ((Arg1 == Zero))
            {
                If ((Arg0 == Zero))
                {
                    If ((SGPI (SGGP, PWE0, PWG0, PWA0) == Zero))
                    {
                        Return (Zero)
                    }
                }

                If ((Arg0 == One))
                {
                    If ((SGPI (P1GP, PWE1, PWG1, PWA1) == Zero))
                    {
                        Return (Zero)
                    }
                }

                If ((Arg0 == 0x02))
                {
                    If ((SGPI (P2GP, PWE2, PWG2, PWA2) == Zero))
                    {
                        Return (Zero)
                    }
                }
            }
            ElseIf ((Arg1 == One))
            {
                If ((Arg0 == Zero))
                {
                    If ((SGPI (SGGP, PWE0, PWG0, PWA0) == One))
                    {
                        Return (Zero)
                    }
                }

                If ((Arg0 == One))
                {
                    If ((SGPI (P1GP, PWE1, PWG1, PWA1) == One))
                    {
                        Return (Zero)
                    }
                }

                If ((Arg0 == 0x02))
                {
                    If ((SGPI (P2GP, PWE2, PWG2, PWA2) == One))
                    {
                        Return (Zero)
                    }
                }
            }

            Return (One)
        }

        Method (NTFY, 2, NotSerialized)
        {
            If ((Arg0 == Zero))
            {
                Notify (\_SB.PCI0.PEG0, Arg1)
            }
            ElseIf ((Arg0 == One))
            {
                Notify (\_SB.PCI0.PEG1, Arg1)
            }
            ElseIf ((Arg0 == 0x02))
            {
                Notify (\_SB.PCI0.PEG2, Arg1)
            }
        }

        Method (GPPR, 2, NotSerialized)
        {
            If ((Arg1 == Zero))
            {
                If ((Arg0 == Zero))
                {
                    SGPO (SGGP, HRE0, HRG0, HRA0, One)
                    Sleep (DLHR)
                    If (CondRefOf (PCPB))
                    {
                        If ((PCPB != Zero))
                        {
                            SGPO (SGGP, PWE0, PWG0, PWA0, Zero)
                        }
                    }
                    Else
                    {
                        SGPO (SGGP, PWE0, PWG0, PWA0, Zero)
                    }
                }

                If ((Arg0 == One))
                {
                    SGPO (P1GP, HRE1, HRG1, HRA1, One)
                    Sleep (DLHR)
                    If (CondRefOf (PCPB))
                    {
                        If ((PCPB != Zero))
                        {
                            SGPO (P1GP, PWE1, PWG1, PWA1, Zero)
                        }
                    }
                    Else
                    {
                        SGPO (P1GP, PWE1, PWG1, PWA1, Zero)
                    }
                }

                If ((Arg0 == 0x02))
                {
                    SGPO (P2GP, HRE2, HRG2, HRA2, One)
                    Sleep (DLHR)
                    If (CondRefOf (PCPB))
                    {
                        If ((PCPB != Zero))
                        {
                            SGPO (P2GP, PWE2, PWG2, PWA2, Zero)
                        }
                    }
                    Else
                    {
                        SGPO (P2GP, PWE2, PWG2, PWA2, Zero)
                    }
                }
            }
            ElseIf ((Arg1 == One))
            {
                If ((Arg0 == Zero))
                {
                    SGPO (SGGP, PWE0, PWG0, PWA0, One)
                    Sleep (DLPW)
                    SGPO (SGGP, HRE0, HRG0, HRA0, Zero)
                    Sleep (DLHR)
                }

                If ((Arg0 == One))
                {
                    SGPO (P1GP, PWE1, PWG1, PWA1, One)
                    Sleep (DLPW)
                    SGPO (P1GP, HRE1, HRG1, HRA1, Zero)
                    Sleep (DLHR)
                }

                If ((Arg0 == 0x02))
                {
                    SGPO (P2GP, PWE2, PWG2, PWA2, One)
                    Sleep (DLPW)
                    SGPO (P2GP, HRE2, HRG2, HRA2, Zero)
                    Sleep (DLHR)
                }
            }
        }

        Method (SGPO, 5, Serialized)
        {
            If ((Arg3 == Zero))
            {
                Arg4 = ~Arg4
                Arg4 &= One
            }

            If ((Arg0 == One))
            {
                If (CondRefOf (\_SB.SGOV))
                {
                    \_SB.SGOV (Arg2, Arg4)
                }
            }
        }

        Method (SGPI, 4, Serialized)
        {
            If ((Arg0 == One))
            {
                If (CondRefOf (\_SB.GGOV))
                {
                    Local0 = \_SB.GGOV (Arg2)
                }
            }

            If ((Arg3 == Zero))
            {
                Local0 = ~Local0
                Local0 &= One
            }

            Return (Local0)
        }
    }

    Scope (\_SB.PCI0)
    {
        Method (RTEN, 1, NotSerialized)
        {
            If ((Arg0 == Zero))
            {
                Q0L0 = One
                Sleep (0x10)
                Local0 = Zero
                While (Q0L0)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                P0RM = Zero
                P0AP = Zero
            }
            ElseIf ((Arg0 == One))
            {
                Q1L0 = One
                Sleep (0x10)
                Local0 = Zero
                While (Q1L0)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                P1RM = Zero
                P1AP = Zero
            }
            ElseIf ((Arg0 == 0x02))
            {
                Q2L0 = One
                Sleep (0x10)
                Local0 = Zero
                While (Q2L0)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                P2RM = Zero
                P2AP = Zero
            }
        }

        Method (RTDS, 1, NotSerialized)
        {
            If ((Arg0 == Zero))
            {
                Q0L2 = One
                Sleep (0x10)
                Local0 = Zero
                While (Q0L2)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                P0RM = One
                P0AP = 0x03
            }
            ElseIf ((Arg0 == One))
            {
                Q1L2 = One
                Sleep (0x10)
                Local0 = Zero
                While (Q1L2)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                P1RM = One
                P1AP = 0x03
            }
            ElseIf ((Arg0 == 0x02))
            {
                Q2L2 = One
                Sleep (0x10)
                Local0 = Zero
                While (Q2L2)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                P2RM = One
                P2AP = 0x03
            }
        }
    }
}

