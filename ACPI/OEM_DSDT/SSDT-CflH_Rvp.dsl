/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-CflH_Rvp.bin, Mon Apr 12 05:08:56 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002C7D (11389)
 *     Revision         0x02
 *     Checksum         0x6D
 *     OEM ID           "AcpiRe"
 *     OEM Table ID     "CflH_Rvp"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "AcpiRe", "CflH_Rvp", 0x00001000)
{
    External (_ADR, IntObj)
    External (_SB_.BTRK, MethodObj)    // 1 Arguments
    External (_SB_.CAGS, MethodObj)    // 1 Arguments
    External (_SB_.GBTR, MethodObj)    // 0 Arguments
    External (_SB_.GGIV, MethodObj)    // 1 Arguments
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.ISME, MethodObj)    // 1 Arguments
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
    External (_SB_.PCI0.I2C2, DeviceObj)
    External (_SB_.PCI0.I2C2.TPD0, DeviceObj)
    External (_SB_.PCI0.I2C2.TPD0._STA, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.I2C3, DeviceObj)
    External (_SB_.PCI0.I2C3.TPL1, DeviceObj)
    External (_SB_.PCI0.I2C3.TPL1._STA, MethodObj)    // 0 Arguments
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
    External (_SB_.PCI0.RP06.PXSX.WIST, MethodObj)    // 0 Arguments
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
    External (_SB_.PCI0.RP21.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP21.L23D, MethodObj)    // 0 Arguments
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
    External (_SB_.PCI0.XHC_.RHUB.HS10, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS14, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)
    External (_SB_.PEPD, DeviceObj)
    External (_SB_.PSD0, MethodObj)    // 1 Arguments
    External (_SB_.PSD3, MethodObj)    // 1 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (_SB_.SGRA, MethodObj)    // 2 Arguments
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (AUDD, FieldUnitObj)
    External (CNVI, UnknownObj)
    External (DVID, UnknownObj)
    External (ECON, IntObj)
    External (GBEP, UnknownObj)
    External (GBES, UnknownObj)
    External (GPRW, MethodObj)    // 2 Arguments
    External (IC0D, FieldUnitObj)
    External (IC1D, FieldUnitObj)
    External (IC1S, FieldUnitObj)
    External (OSYS, UnknownObj)
    External (PCHS, UnknownObj)
    External (PCPB, UnknownObj)
    External (PEP0, UnknownObj)
    External (PEPC, UnknownObj)
    External (PIN_.OFF_, MethodObj)    // 1 Arguments
    External (PIN_.ON__, MethodObj)    // 1 Arguments
    External (PIN_.STA_, MethodObj)    // 1 Arguments
    External (PWRG, UnknownObj)
    External (PXSX, DeviceObj)
    External (RCG0, IntObj)
    External (RCG1, IntObj)
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
    External (UAMS, UnknownObj)
    External (VRRD, FieldUnitObj)
    External (WAKG, UnknownObj)
    External (WAKP, UnknownObj)
    External (WGRC, IntObj)
    External (WIRC, IntObj)
    External (WWRC, IntObj)
    External (XDST, IntObj)
    External (XHPR, UnknownObj)

    If ((GBES != Zero)){}
    Scope (\_SB.PCI0.RP09)
    {
        Name (RSTG, Package (0x02)
        {
            0x0302000E, 
            Zero
        })
        Name (PWRG, Package (0x02)
        {
            0x030A0008, 
            One
        })
        Name (SCLK, 0x07)
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

    Scope (\_SB.PCI0.RP21)
    {
        Name (RSTG, Package (0x02)
        {
            0x03050004, 
            Zero
        })
        Name (PWRG, Package (0x02)
        {
            0x03070012, 
            Zero
        })
        Name (WAKG, 0x030A0012)
        Name (SCLK, 0x04)
        Name (LNRD, Zero)
        Method (UPRD, 1, Serialized)
        {
            If ((Arg0 <= 0x2710))
            {
                LNRD = Arg0
            }

            Return (LNRD) /* \_SB_.PCI0.RP21.LNRD */
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
    }

    Scope (\_SB.PCI0.SAT0)
    {
        Scope (PRT1)
        {
            Name (PWRG, Package (0x02)
            {
                0x030A0009, 
                One
            })
        }

        Scope (PRT4)
        {
            Name (PWRG, Package (0x02)
            {
                0x0308000C, 
                One
            })
        }

        Scope (PRT5)
        {
            Name (PWRG, Package (0x02)
            {
                0x030A0001, 
                One
            })
            Method (ZPOF, 0, NotSerialized)
            {
                \_SB.PCI0.SAT0.PRT5.STPR._OFF ()
            }

            Method (ZPON, 0, NotSerialized)
            {
                \_SB.PCI0.SAT0.PRT5.STPR._ON ()
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
                    Method (_E02, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
                    {
                        ADBG ("ZPODD event")
                        If ((\_SB.GGIV (0x03050002) == Zero))
                        {
                            ADBG ("ODD detected")
                            \PIN.ON (\_SB.PCI0.SAT0.PRT5.PWRG)
                        }

                        Notify (\_SB.PCI0.SAT0, 0x85) // Device-Specific
                    }
                }
            }
            ElseIf ((0x20 & RCG1))
            {
                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x02, 0x04))
                }
            }
        }

        Name (DRV, Zero)
        Name (PWR, Zero)
        Method (ZPOD, 3, Serialized)
        {
            If (!(0x20 & RCG1))
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
                        Case (0x0005FFFF)
                        {
                            If (PWR)
                            {
                                \_SB.PCI0.SAT0.PRT5.STPR._ON ()
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
                        Case (0x0005FFFF)
                        {
                            Return (\_SB.PCI0.SAT0.PRT5.STPR._STA ())
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

    If ((\_SB.PCI0.CNIP () || \_SB.PCI0.RP06.PXSX.WIST ()))
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS14)
        {
            If (\_SB.PCI0.RP06.PXSX.WIST ())
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
            }

            Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                If (\_SB.PCI0.CNIP ())
                {
                    Return (Package (0x01)
                    {
                        BTPR
                    })
                }

                If (\_SB.PCI0.RP06.PXSX.WIST ())
                {
                    Return (Package (0x01)
                    {
                        DBTP
                    })
                }

                Return (Package (0x00){})
            }

            Method (_PR2, 0, NotSerialized)  // _PR2: Power Resources for D2
            {
                If (\_SB.PCI0.CNIP ())
                {
                    Return (Package (0x01)
                    {
                        BTPR
                    })
                }

                If (\_SB.PCI0.RP06.PXSX.WIST ())
                {
                    Return (Package (0x01)
                    {
                        DBTP
                    })
                }

                Return (Package (0x00){})
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                If (\_SB.PCI0.CNIP ())
                {
                    Return (Package (0x01)
                    {
                        BTPR
                    })
                }

                If (\_SB.PCI0.RP06.PXSX.WIST ())
                {
                    Return (Package (0x01)
                    {
                        DBTP
                    })
                }

                Return (Package (0x00){})
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

    Scope (\_SB.PCI0.I2C2)
    {
        Method (PS0X, 0, Serialized)
        {
        }

        Method (PS3X, 0, Serialized)
        {
        }

        PowerResource (PXTC, 0x00, 0x0000)
        {
            Name (ONTM, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (One)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                \_SB.SGRA (0x03000010, Zero)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                \_SB.SGRA (0x03000010, One)
            }
        }

        Scope (TPD0)
        {
            Name (TD_P, Package (0x01)
            {
                \_SB.PCI0.I2C2.PXTC
            })
            Alias (IC1S, TD_D)
            Alias (\_SB.PCI0.I2C2.PXTC.ONTM, TD_C)
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
                    Return (TD_P) /* \_SB_.PCI0.I2C2.TPD0.TD_P */
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
                    Return (TD_P) /* \_SB_.PCI0.I2C2.TPD0.TD_P */
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

    Scope (\_SB.PCI0.I2C3)
    {
        Method (PS0X, 0, Serialized)
        {
        }

        Method (PS3X, 0, Serialized)
        {
        }

        PowerResource (PXTC, 0x00, 0x0000)
        {
            Name (ONTM, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.GGOV (0x03010012) == One))
                {
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                \_SB.SGOV (0x0309000A, One)
                \_SB.SGOV (0x03010012, One)
                ONTM = Timer
                \_SB.SGRA (0x03090000, One)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                \_SB.SGRA (0x03090000, Zero)
                \_SB.SGOV (0x03010012, Zero)
                \_SB.SGOV (0x0309000A, Zero)
                ^ONTM = Zero
            }
        }

        Scope (TPL1)
        {
            Name (TD_P, Package (0x01)
            {
                \_SB.PCI0.I2C3.PXTC
            })
            Alias (IC1D, TD_D)
            Alias (\_SB.PCI0.I2C3.PXTC.ONTM, TD_C)
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
                    Return (TD_P) /* \_SB_.PCI0.I2C3.TPL1.TD_P */
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
                    Return (TD_P) /* \_SB_.PCI0.I2C3.TPL1.TD_P */
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
        If (\_SB.ISME (0x030A0012))
        {
            \_SB.SHPO (0x030A0012, One)
            Notify (\_SB.PCI0.RP21, 0x02) // Device Wake
            \_SB.CAGS (0x030A0012)
        }

        If (\_SB.ISME (0x03020005))
        {
            \_SB.SHPO (0x03020005, One)
            Notify (\_SB.PCI0.RP06, 0x02) // Device Wake
            \_SB.CAGS (0x03020005)
        }
    }
}

