DefinitionBlock ("", "SSDT", 2, "SUKA", "TBT3", 0x00000000)
{
    External (DTGP, MethodObj)    // 5 Arguments
    External (OSDW, MethodObj)    // 0 Arguments

    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.RP17, DeviceObj)
    External (_SB_.PCI0.RP17.PXSX, DeviceObj)

    External (_GPE.XTFY, MethodObj) // Notify TB-controller on hotplug
    External (TWIN, FieldUnitObj)   // TB Windows native mode
    External (NOHP, FieldUnitObj)   // Notify HotPlug

    Scope (\_GPE)
    {
        Method (NTFY, 2, Serialized)
        {
            // Patch only if in windows native mode and OSX
            If (OSDW () && (\TWIN != Zero) && (NOHP == One) && Arg0 == 0x11 && Arg1 == One)
            {
                Notify (\_SB.PCI0.RP17.UPSB.DSB0.NHI0, Zero) // Bus Check
            }
            Else
            {
                XTFY (Arg0, Arg1)
            }
        }
    }

    If (OSDW ())
    {
        Scope (\_SB.PCI0.RP17)
        {
            Scope (PXSX)
            {
                Name (_STA, Zero)  // _STA: Status
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Device (UPSB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    AVND,   32, 
                    BMIE,   3, 
                    Offset (0x18), 
                    PRIB,   8, 
                    SECB,   8, 
                    SUBB,   8, 
                    Offset (0x1E), 
                        ,   13, 
                    MABT,   1
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (Package (0x02)
                    {
                        0x69, 
                        0x03
                    })
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Return (SECB) /* \_SB_.PCI0.RP17.UPSB.SECB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Local0 = Package (0x06)
                        {
                            "AAPL,slot-name", 
                            Buffer (0x0C)
                            {
                                "Thunderbolt"
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }, 

                            "PCI-Thunderbolt", 
                            One
                        }
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }

                Device (DSB0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (Package (0x02)
                        {
                            0x69, 
                            0x03
                        })
                    }

                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                    {
                        Return (SECB) /* \_SB_.PCI0.RP17.UPSB.DSB0.SECB */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x06)
                            {
                                "AAPL,slot-name", 
                                Buffer (0x0C)
                                {
                                    "Thunderbolt"
                                }, 

                                "built-in", 
                                Buffer (One)
                                {
                                     0x00                                             // .
                                }, 

                                "PCIHotplugCapable", 
                                Zero
                            }
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }

                    Device (NHI0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Name (_STR, Unicode ("Thunderbolt"))  // _STR: Description String
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                        {
                            Return (Package (0x02)
                            {
                                0x69, 
                                0x03
                            })
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            Local0 = Package (0x11)
                                {
                                    "AAPL,slot-name", 
                                    Buffer (0x0C)
                                    {
                                        "Thunderbolt"
                                    }, 

                                    "name", 
                                    Buffer (0x23)
                                    {
                                        "Titan Ridge Thunderbolt Controller"
                                    }, 

                                    "model", 
                                    Buffer (0x2C)
                                    {
                                        "Intel JHL7540 Titan Ridge Thunderbolt 3 NHI"
                                    }, 

                                    "device_type", 
                                    Buffer (0x17)
                                    {
                                        "Thunderbolt-Controller"
                                    }, 

                                    "ThunderboltDROM", 
                                    Buffer (0x6E)
                                    {
                                        /* 0000 */  0x36, 0x00, 0x98, 0x76, 0xD5, 0x24, 0x64, 0x14,  // 6..v.$d.
                                        /* 0008 */  0x00, 0xD9, 0xB5, 0xAB, 0x32, 0x01, 0x61, 0x00,  // ....2.a.
                                        /* 0010 */  0x27, 0x01, 0x11, 0x20, 0x01, 0x01, 0x08, 0x81,  // '.. ....
                                        /* 0018 */  0x80, 0x02, 0x80, 0x00, 0x00, 0x00, 0x08, 0x82,  // ........
                                        /* 0020 */  0x90, 0x01, 0x80, 0x00, 0x00, 0x00, 0x02, 0xC3,  // ........
                                        /* 0028 */  0x02, 0xC4, 0x05, 0x85, 0x50, 0x00, 0x00, 0x05,  // ....P...
                                        /* 0030 */  0x86, 0x50, 0x00, 0x00, 0x02, 0x87, 0x0B, 0x88,  // .P......
                                        /* 0038 */  0x20, 0x01, 0x00, 0x64, 0x00, 0x00, 0x00, 0x00,  //  ..d....
                                        /* 0040 */  0x00, 0x03, 0x89, 0x80, 0x02, 0xCA, 0x02, 0xCB,  // ........
                                        /* 0048 */  0x09, 0x01, 0x4C, 0x65, 0x6E, 0x6F, 0x76, 0x6F,  // ..Lenovo
                                        /* 0050 */  0x00, 0x1D, 0x02, 0x4C, 0x45, 0x47, 0x49, 0x4F,  // ...LEGIO
                                        /* 0058 */  0x4E, 0x20, 0x59, 0x39, 0x30, 0x30, 0x30, 0x58,  // N Y9000X
                                        /* 0060 */  0x20, 0x32, 0x30, 0x32, 0x30, 0x20, 0x28, 0x53,  //  2020 (S
                                        /* 0068 */  0x75, 0x6B, 0x6B, 0x61, 0x29, 0x00               // ukka).
                                    }, 

                                    "ThunderboltConfig", 
                                    Buffer (0x20)
                                    {
                                        /* 0000 */  0x00, 0x02, 0x1C, 0x00, 0x02, 0x00, 0x05, 0x03,  // ........
                                        /* 0008 */  0x01, 0x00, 0x04, 0x00, 0x05, 0x03, 0x02, 0x00,  // ........
                                        /* 0010 */  0x03, 0x00, 0x05, 0x03, 0x01, 0x00, 0x00, 0x00,  // ........
                                        /* 0018 */  0x03, 0x03, 0x02, 0x00, 0x01, 0x00, 0x02, 0x00   // ........
                                    }, 

                                    "linkDetails", 
                                    Buffer (0x08)
                                    {
                                         0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00   // ........
                                    }, 

                                    "power-save", 
                                    One, 
                                    Buffer (One)
                                    {
                                         0x00                                             // .
                                    }
                                }
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }
                    }
                }

                Device (DSB1)
                {
                    Name (_ADR, 0x00010000)  // _ADR: Address
                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (Package (0x02)
                        {
                            0x69, 
                            0x03
                        })
                    }

                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                    {
                        Return (SECB) /* \_SB_.PCI0.RP17.UPSB.DSB1.SECB */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }

                Device (DSB2)
                {
                    Name (_ADR, 0x00020000)  // _ADR: Address
                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (Package (0x02)
                        {
                            0x69, 
                            0x03
                        })
                    }

                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                    {
                        Return (SECB) /* \_SB_.PCI0.RP17.UPSB.DSB2.SECB */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }

                    Device (XHC3)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            Local0 = Package (0x18)
                                {
                                    "AAPL,slot-name", 
                                    Buffer (0x0C)
                                    {
                                        "Thunderbolt"
                                    }, 

                                    "built-in", 
                                    Buffer (One)
                                    {
                                         0x00                                             // .
                                    }, 

                                    "name", 
                                    Buffer (0x1F)
                                    {
                                        "Titan Ridge USB 3.1 Controller"
                                    }, 

                                    "model", 
                                    Buffer (0x22)
                                    {
                                        "Intel JHL7540 Titan Ridge USB 3.1"
                                    }, 

                                    "device_type", 
                                    Buffer (0x1F)
                                    {
                                        "USB eXtensible Host-Controller"
                                    }, 

                                    "AAPL,current-available", 
                                    0x0834, 
                                    "AAPL,current-extra", 
                                    0x0A8C, 
                                    "AAPL,current-in-sleep", 
                                    0x0A8C, 
                                    "AAPL,max-port-current-in-sleep", 
                                    0x0834, 
                                    "AAPL,device-internal", 
                                    Zero, 
                                    "AAPL,root-hub-depth", 
                                    0x1A, 
                                    "AAPL,XHC-clock-id", 
                                    One
                                }
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }

                        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                        {
                            Return (Package (0x02)
                            {
                                0x69, 
                                0x03
                            })
                        }

                        Device (RHUB)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (Zero)
                            }

                            Device (SSP1)
                            {
                                Name (_ADR, 0x03)  // _ADR: Address
                                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                                {
                                    0xFF, 
                                    0x09, 
                                    Zero, 
                                    Zero
                                })
                                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                                {
                                    ToPLD (
                                        PLD_Revision           = 0x1,
                                        PLD_IgnoreColor        = 0x1,
                                        PLD_Red                = 0x0,
                                        PLD_Green              = 0x0,
                                        PLD_Blue               = 0x0,
                                        PLD_Width              = 0x0,
                                        PLD_Height             = 0x0,
                                        PLD_UserVisible        = 0x1,
                                        PLD_Dock               = 0x0,
                                        PLD_Lid                = 0x0,
                                        PLD_Panel              = "UNKNOWN",
                                        PLD_VerticalPosition   = "UPPER",
                                        PLD_HorizontalPosition = "LEFT",
                                        PLD_Shape              = "UNKNOWN",
                                        PLD_GroupOrientation   = 0x0,
                                        PLD_GroupToken         = 0x0,
                                        PLD_GroupPosition      = 0x0,
                                        PLD_Bay                = 0x0,
                                        PLD_Ejectable          = 0x0,
                                        PLD_EjectRequired      = 0x0,
                                        PLD_CabinetNumber      = 0x0,
                                        PLD_CardCageNumber     = 0x0,
                                        PLD_Reference          = 0x0,
                                        PLD_Rotation           = 0x0,
                                        PLD_Order              = 0x0,
                                        PLD_VerticalOffset     = 0x0,
                                        PLD_HorizontalOffset   = 0x0)

                                })
                                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                                {
                                    If ((Arg2 == Zero))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x03                                             // .
                                        })
                                    }

                                    Return (Package (0x04)
                                    {
                                        "UsbCPortNumber", 
                                        One, 
                                        "UsbPowerSource", 
                                        One
                                    })
                                }
                            }

                            Device (SSP2)
                            {
                                Name (_ADR, 0x04)  // _ADR: Address
                                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                                {
                                    0xFF, 
                                    0x09, 
                                    Zero, 
                                    Zero
                                })
                                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                                {
                                    ToPLD (
                                        PLD_Revision           = 0x1,
                                        PLD_IgnoreColor        = 0x1,
                                        PLD_Red                = 0x0,
                                        PLD_Green              = 0x0,
                                        PLD_Blue               = 0x0,
                                        PLD_Width              = 0x0,
                                        PLD_Height             = 0x0,
                                        PLD_UserVisible        = 0x1,
                                        PLD_Dock               = 0x0,
                                        PLD_Lid                = 0x0,
                                        PLD_Panel              = "UNKNOWN",
                                        PLD_VerticalPosition   = "UPPER",
                                        PLD_HorizontalPosition = "LEFT",
                                        PLD_Shape              = "UNKNOWN",
                                        PLD_GroupOrientation   = 0x0,
                                        PLD_GroupToken         = 0x0,
                                        PLD_GroupPosition      = 0x0,
                                        PLD_Bay                = 0x0,
                                        PLD_Ejectable          = 0x0,
                                        PLD_EjectRequired      = 0x0,
                                        PLD_CabinetNumber      = 0x0,
                                        PLD_CardCageNumber     = 0x0,
                                        PLD_Reference          = 0x0,
                                        PLD_Rotation           = 0x0,
                                        PLD_Order              = 0x0,
                                        PLD_VerticalOffset     = 0x0,
                                        PLD_HorizontalOffset   = 0x0)

                                })
                                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                                {
                                    If ((Arg2 == Zero))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x03                                             // .
                                        })
                                    }

                                    Return (Package (0x04)
                                    {
                                        "UsbCPortNumber", 
                                        0x02, 
                                        "UsbPowerSource", 
                                        0x02
                                    })
                                }
                            }
                        }
                    }
                }

                Device (DSB4)
                {
                    Name (_ADR, 0x00040000)  // _ADR: Address
                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (Package (0x02)
                        {
                            0x69, 
                            0x03
                        })
                    }

                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                    {
                        Return (SECB) /* \_SB_.PCI0.RP17.UPSB.DSB4.SECB */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }
            }
        }
    }
}
