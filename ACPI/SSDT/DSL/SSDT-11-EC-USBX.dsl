/*
 * AppleUsbPower compatibility table for Skylake+.
 *
 * Be warned that power supply values can be different
 * for different systems. Depending on the configuration
 * these values must match injected IOKitPersonalities
 * for com.apple.driver.AppleUSBMergeNub. iPad remains
 * being the most reliable device for testing USB port
 * charging support.
 *
 * Try NOT to rename EC0, H_EC, etc. to EC.
 * These devices are incompatible with macOS and may break
 * at any time. AppleACPIEC kext must NOT load on desktops.
 * See the disable code below.
 *
 * While on some laptops, this kext is essential to access EC
 * region for battery status etc. Please ignore EC related
 * patches under the circumstance.
 *
 * Reference USB: https://applelife.ru/posts/550233
 * Reference EC: https://applelife.ru/posts/807985
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "SsdtEC", 0x00001000)
{
    External (OSDW, MethodObj) // 0 Arguments
    External (DTGP, MethodObj) // 5 Arguments
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (\_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (\_SB_.PCI0.XHC_.RHUB.HS08, DeviceObj)

    Scope (\_SB)
    {
        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                        0x03                                             // .
                    })
                }

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
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.PCI0.LPCB)
    {
        Device (EC)
        {
            Name (_HID, "ACID0001")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB_.PCI0.XHC_.RHUB) {
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

        // Enable SuperDrive
        Method (MBSD, 0, NotSerialized)
        {
            Return (One)
        }
    }
}