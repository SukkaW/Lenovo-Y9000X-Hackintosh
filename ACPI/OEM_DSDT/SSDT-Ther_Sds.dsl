/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-Ther_Sds.bin, Mon Apr 12 05:08:56 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000AB3 (2739)
 *     Revision         0x02
 *     Checksum         0xC4
 *     OEM ID           "Ther_S"
 *     OEM Table ID     "Ther_Sds"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "Ther_S", "Ther_Sds", 0x00001000)
{
    External (_SB_.AAC0, UnknownObj)
    External (_SB_.ACRT, UnknownObj)
    External (_SB_.APSV, UnknownObj)
    External (_SB_.DTS1, UnknownObj)
    External (_SB_.DTS2, UnknownObj)
    External (_SB_.DTS3, UnknownObj)
    External (_SB_.DTS4, UnknownObj)
    External (_SB_.DTSE, UnknownObj)
    External (_SB_.PDTS, UnknownObj)
    External (_SB_.PKGA, UnknownObj)
    External (_SB_.PR00, UnknownObj)
    External (_SB_.PR01, UnknownObj)
    External (_SB_.PR02, UnknownObj)
    External (_SB_.PR03, UnknownObj)
    External (_SB_.PR04, UnknownObj)
    External (_SB_.PR05, UnknownObj)
    External (_SB_.PR06, UnknownObj)
    External (_SB_.PR07, UnknownObj)
    External (_SB_.PR08, UnknownObj)
    External (_SB_.PR09, UnknownObj)
    External (_SB_.PR10, UnknownObj)
    External (_SB_.PR11, UnknownObj)
    External (_SB_.PR12, UnknownObj)
    External (_SB_.PR13, UnknownObj)
    External (_SB_.PR14, UnknownObj)
    External (_SB_.PR15, UnknownObj)
    External (AC0F, IntObj)
    External (AC1F, IntObj)
    External (ACT1, IntObj)
    External (ACTT, IntObj)
    External (CRTT, IntObj)
    External (CTYP, IntObj)
    External (DPTF, IntObj)
    External (ECON, IntObj)
    External (PSVT, IntObj)
    External (TC1V, IntObj)
    External (TC2V, IntObj)
    External (TCNT, IntObj)
    External (TSPV, IntObj)
    External (VFN0, IntObj)
    External (VFN1, IntObj)
    External (VFN2, IntObj)
    External (VFN3, IntObj)
    External (VFN4, IntObj)

    Scope (\_TZ)
    {
        Name (ETMD, One)
        Name (THLD, 0x78)
        Name (WBAC, Package (0x04)
        {
            Package (0x04)
            {
                0x55, 
                0x4B, 
                0x41, 
                0x37
            }, 

            Package (0x04)
            {
                0x0A, 
                0x0A, 
                0x0A, 
                0x05
            }, 

            Package (0x04)
            {
                0x64, 
                0x50, 
                0x3C, 
                0x1E
            }, 

            Package (0x04)
            {
                0x6E, 
                0x6C, 
                0x6A, 
                0x68
            }
        })
        Method (FCTL, 1, Serialized)
        {
            Notify (\_TZ.TZ00, 0x81) // Thermal Trip Point Change
        }

        PowerResource (FN00, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (\VFN0) /* External reference */
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                \VFN0 = One
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                \VFN0 = Zero
            }
        }

        Device (FAN0)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN00
            })
            Name (_FST, Package (0x03)  // _FST: Fan Status
            {
                Zero, 
                Zero, 
                0xFFFFFFFF
            })
        }

        PowerResource (FN01, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (\VFN1) /* External reference */
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                \VFN1 = One
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                \VFN1 = Zero
            }
        }

        Device (FAN1)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN01
            })
        }

        PowerResource (FN02, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (\VFN2) /* External reference */
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                \VFN2 = One
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                \VFN2 = Zero
            }
        }

        Device (FAN2)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN02
            })
        }

        PowerResource (FN03, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (\VFN3) /* External reference */
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                \VFN3 = One
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                \VFN3 = Zero
            }
        }

        Device (FAN3)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN03
            })
        }

        ThermalZone (TZ00)
        {
            Name (PTMP, 0x0BB8)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                CTYP = Arg0
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                If (CondRefOf (\_SB.ACRT))
                {
                    If ((\_SB.ACRT != Zero))
                    {
                        Return ((0x0AAC + (\_SB.ACRT * 0x0A)))
                    }
                }

                If ((DPTF == Zero))
                {
                    Return ((0x0AAC + (\CRTT * 0x0A)))
                }
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Local1 = DerefOf (DerefOf (WBAC [Zero]) [Zero])
                Local2 = DerefOf (DerefOf (WBAC [One]) [Zero])
                Local3 = DerefOf (DerefOf (WBAC [0x03]) [Zero])
                If ((ETMD == Zero))
                {
                    Local4 = Local3
                }
                ElseIf ((\VFN0 == One))
                {
                    Local4 = (Local1 - Local2)
                }
                Else
                {
                    Local4 = Local1
                }

                Return ((0x0AAC + (Local4 * 0x0A)))
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Local1 = DerefOf (DerefOf (WBAC [Zero]) [One])
                Local2 = DerefOf (DerefOf (WBAC [One]) [One])
                Local3 = DerefOf (DerefOf (WBAC [0x03]) [One])
                If ((ETMD == Zero))
                {
                    Local4 = Local3
                }
                ElseIf ((\VFN1 == One))
                {
                    Local4 = (Local1 - Local2)
                }
                Else
                {
                    Local4 = Local1
                }

                Return ((0x0AAC + (Local4 * 0x0A)))
            }

            Method (_AC2, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Local1 = DerefOf (DerefOf (WBAC [Zero]) [0x02])
                Local2 = DerefOf (DerefOf (WBAC [One]) [0x02])
                Local3 = DerefOf (DerefOf (WBAC [0x03]) [0x02])
                If ((ETMD == Zero))
                {
                    Local4 = Local3
                }
                ElseIf ((\VFN2 == One))
                {
                    Local4 = (Local1 - Local2)
                }
                Else
                {
                    Local4 = Local1
                }

                Return ((0x0AAC + (Local4 * 0x0A)))
            }

            Method (_AC3, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Local1 = DerefOf (DerefOf (WBAC [Zero]) [0x03])
                Local2 = DerefOf (DerefOf (WBAC [One]) [0x03])
                Local3 = DerefOf (DerefOf (WBAC [0x03]) [0x03])
                If ((ETMD == Zero))
                {
                    Local4 = Local3
                }
                ElseIf ((\VFN3 == One))
                {
                    Local4 = (Local1 - Local2)
                }
                Else
                {
                    Local4 = Local1
                }

                Return ((0x0AAC + (Local4 * 0x0A)))
            }

            Name (_AL0, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN0
            })
            Name (_AL1, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN1
            })
            Name (_AL2, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN2
            })
            Name (_AL3, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN3
            })
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (CondRefOf (\_SB.DTSE))
                {
                    If ((\_SB.DTSE == 0x03))
                    {
                        Return ((0x0B10 + (\CRTT * 0x0A)))
                    }
                }

                Return (0x0BC2)
            }

            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                If ((\TCNT == 0x10))
                {
                    Return (Package (0x10)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09, 
                        \_SB.PR10, 
                        \_SB.PR11, 
                        \_SB.PR12, 
                        \_SB.PR13, 
                        \_SB.PR14, 
                        \_SB.PR15
                    })
                }

                If ((\TCNT == 0x0E))
                {
                    Return (Package (0x0E)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09, 
                        \_SB.PR10, 
                        \_SB.PR11, 
                        \_SB.PR12, 
                        \_SB.PR13
                    })
                }

                If ((\TCNT == 0x0C))
                {
                    Return (Package (0x0C)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09, 
                        \_SB.PR10, 
                        \_SB.PR11
                    })
                }

                If ((\TCNT == 0x0A))
                {
                    Return (Package (0x0A)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09
                    })
                }

                If ((\TCNT == 0x08))
                {
                    Return (Package (0x08)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07
                    })
                }

                If ((\TCNT == 0x07))
                {
                    Return (Package (0x07)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06
                    })
                }

                If ((\TCNT == 0x06))
                {
                    Return (Package (0x06)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05
                    })
                }

                If ((\TCNT == 0x05))
                {
                    Return (Package (0x05)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04
                    })
                }

                If ((\TCNT == 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03
                    })
                }

                If ((\TCNT == 0x03))
                {
                    Return (Package (0x03)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02
                    })
                }

                If ((\TCNT == 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_SB.PR00, 
                        \_SB.PR01
                    })
                }

                Return (Package (0x01)
                {
                    \_SB.PR00
                })
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                If (CondRefOf (\_SB.APSV))
                {
                    If ((\_SB.APSV != Zero))
                    {
                        Return ((0x0AAC + (\_SB.APSV * 0x0A)))
                    }
                }

                Return ((0x0AAC + (\PSVT * 0x0A)))
            }

            Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
            {
                Return (\TC1V) /* External reference */
            }

            Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
            {
                Return (\TC2V) /* External reference */
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (\TSPV) /* External reference */
            }
        }
    }
}

