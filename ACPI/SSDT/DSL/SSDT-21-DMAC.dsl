//Add DMAC
DefinitionBlock ("", "SSDT", 2, "OCLT", "DMAC", 0)
{
    External (OSDW, MethodObj) // 0 Arguments
    External(_SB.PCI0.LPCB, DeviceObj)
    Scope (_SB.PCI0.LPCB)
    {
        Device (DMAC)
        {
            Name (_HID, EisaId ("PNP0200"))
            Name (_CRS, ResourceTemplate()
            {
                IO (Decode16, 0x00, 0x00, 0x01, 0x20)
                IO (Decode16, 0x81, 0x81, 0x01, 0x11)
                IO (Decode16, 0x93, 0x93, 0x01, 0x0d)
                IO (Decode16, 0xc0, 0xc0, 0x01, 0x20)
                DMA (Compatibility, NotBusMaster, Transfer8_16) { 4 }
            })

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
