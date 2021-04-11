//
// This enables all ports to be as native as possible on OSX and only disables those devices which
// have definetly no drivers on OSX.
//
// The opinion that things like cardreader, which might not be used, are adding to a significant
// power-draw is false - if one has a working USB-setup. Even if it does not hurt.
//
// This SSDT is developed with compatibility in mind and therefor all devices are enabled by default.
//
// Reference: https://www.intel.com/content/dam/www/public/us/en/documents/technical-specifications/extensible-host-controler-interface-usb-xhci.pdf
//
DefinitionBlock ("", "SSDT", 2, "SUKA", "XHC1", 0x00001000)
{
    External (OSDW, MethodObj) // 0 Arguments
    External (DTGP, MethodObj) // 5 Arguments
    External (_SB.PCI0.XHC_, DeviceObj)
    External (_SB.PCI0.XHC_.RHUB, DeviceObj)

    External (_SB.PCI0.XHC_.RHUB.HS03, DeviceObj)
    External (_SB.PCI0.XHC_.RHUB.HS05, DeviceObj)
    External (_SB.PCI0.XHC_.RHUB.HS08, DeviceObj)

    External (_SB.PCI0.RP17.PXSX.DSB2.XHC2, DeviceObj)
    External (_SB.PCI0.RP17.PXSX.DSB2.XHC2.MODU, MethodObj)    // 0 Arguments
    External (_SB.PCI0.RP17.UPN1, IntObj)
    External (_SB.PCI0.RP17.UPN2, IntObj)

    Scope (\_SB)
    {
        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package ()
                    {
                        "kUSBSleepPortCurrentLimit", 
                        2100, 
                        "kUSBWakePortCurrentLimit", 
                        2100,
                        "kUSBSleepPowerSupply", 
                        5100, 
                        "kUSBWakePowerSupply", 
                        5100, 
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSDW ())
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Scope (PCI0.XHC_) {
            Name (_GPE, 0x6D)  // _GPE: General Purpose Events

            // kUSBTypeCCableDetectACPIMethodSupported
            Method (RTPC, 1, Serialized)
            {
                Return (Zero)
            }

            /**
             * kUSBTypeCCableDetectACPIMethod
             *
             * Return:
             *    kUSBTypeCCableTypeNone              = 0,
             *    kUSBTypeCCableTypeUSB               = 1,
             */
            Method (MODU, 0, Serialized)
            {
                Local0 = One

                If (CondRefOf (\_SB.PCI0.RP17.PXSX.DSB2.XHC2.MODU))
                {
                    Local0 = (\_SB.PCI0.RP17.PXSX.DSB2.XHC2.MODU ())
                }

                Return (Local0)
            }

            // Enable SuperDrive
            Method (MBSD, 0, NotSerialized)
            {
                Return (One)
            }

            If (CondRefOf (\_SB_.PCI0.RP17.PXSX.DSB2.XHC2))
            {
                Name (SSP, Package (0x01)
                {
                    "XHC2"
                })
                Name (SS, Package (0x01)
                {
                    "XHC2"
                })
            }

            Scope (RHUB)
            {
                Scope (HS03) // Front USB-C-Port, weired config, needs investigation
                {
                    If (CondRefOf (\_SB.PCI0.RP17.PXSX.DSB2.XHC2))
                    {
                        Name (SSP, Package (0x02)
                        {
                            "XHC2", 
                            0x03
                        })
                        Name (SS, Package (0x02)
                        {
                            "XHC2", 
                            0x03
                        })

                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            Local0 = Package (0x01) {}

                            If (CondRefOf (\_SB.PCI0.RP17.UPN2))
                            {
                                Local0 = Package (0x02) {
                                    "UsbCPortNumber", 
                                    \_SB.PCI0.RP17.UPN1
                                }
                            }

                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }
                    }
                }

                Scope (HS05) // Back USB-C-Port, weired config, needs investigation
                {
                    If (CondRefOf (\_SB_.PCI0.RP17.PXSX.DSB2.XHC2))
                    {
                        Name (SSP, Package (0x02)
                        {
                            "XHC2", 
                            0x04
                        })
                        Name (SS, Package (0x02)
                        {
                            "XHC2", 
                            0x04
                        })

                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            Local0 = Package (0x01) {}

                            If (CondRefOf (\_SB.PCI0.RP17.UPN2))
                            {
                                Local0 = Package (0x02) {
                                    "UsbCPortNumber", 
                                    \_SB.PCI0.RP17.UPN2
                                }
                            }

                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }
                    }
                }

                Scope (HS08) { // Deactivate Fingerprint reader
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (OSDW ())
                        {
                            Return (Zero) // disabled on OSX
                        }

                        Return (0xF) // enabled on others
                    }
                }
            }
        }
    }
}