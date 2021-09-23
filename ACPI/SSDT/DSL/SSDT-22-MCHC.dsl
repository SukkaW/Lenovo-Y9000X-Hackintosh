DefinitionBlock ("", "SSDT", 2, "OCLT", "MCHC", 0)
{
    External (OSDW, MethodObj) // 0 Arguments

    External (_SB.PCI0, DeviceObj)
    Scope (_SB.PCI0)
    {
        Device (MCHC)
        {
            Name (_ADR, Zero)
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
