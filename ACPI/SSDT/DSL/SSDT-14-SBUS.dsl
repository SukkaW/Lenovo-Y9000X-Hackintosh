//
DefinitionBlock ("", "SSDT", 2, "OCLT", "SBUS", 0)
{
    External (OSDW, MethodObj) // 0 Arguments
    External (_SB_.PCI0.SBUS, DeviceObj)

    Scope (_SB.PCI0.SBUS)
    {
        Device (BUS0)
        {
            Name (_CID, "smbus")
            Name (_ADR, Zero)

            /*
             * Uncomment replacing 0x57 with your own value which might be found
             * in SMBus section of Intel datasheet for your motherboard.
             *
             * The "diagsvault" is the diagnostic vault where messages are stored.
             * It's located at address 87 (0x57) on the SMBus controller.
             * While "diagsvault" may refer to diags, a hardware diagnosis program via EFI for Macs
             * that communicates with the SMBus controller, the effect is really unknown for hacks.
             * Uncomment this with caution.
             */

            /**
            Device (DVL0)
            {
                Name (_ADR, 0x57)  // _ADR: Address
                Name (_CID, "diagsvault")  // _CID: Compatible ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (!Arg2)
                    {
                        Return (Buffer (One)
                        {
                             0x57                                             // W
                        })
                    }
                    Return (Package (0x02)
                    {
                        "address", 
                        0x57
                    })
                }
            }
            **/

            Method (_STA, 0, NotSerialized)
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
    }
}
