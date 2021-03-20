//Add PPMC
DefinitionBlock ("", "SSDT", 2, "OCLT", "PPMC", 0)
{
    External (OSDW, MethodObj) // 0 Arguments

    External (_SB.PCI0, DeviceObj)
    Scope (_SB.PCI0)
    {
        Device (PPMC)
        {
            Name (_ADR, 0x001F0002)
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
