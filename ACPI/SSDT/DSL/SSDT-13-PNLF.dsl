//
DefinitionBlock("", "SSDT", 2, "OCLT", "PNLF", 0)
{
    External (OSDW, MethodObj) // 0 Arguments

    Scope(_SB)
    {
        Device(PNLF)
        {
            Name(_ADR, Zero)
            Name(_HID, EisaId ("APP0002"))
            Name(_CID, "backlight")
            //CoffeeLake+
            Name(_UID, 19)
            Method (_STA, 0, NotSerialized)
            {
                If (OSDW ())
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}
//EOF
