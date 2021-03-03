//
DefinitionBlock("", "SSDT", 2, "OCLT", "EXT3", 0)
{
    External(_SB.PCI0.LPCB.LID0, DeviceObj)

    Method (EXT3, 1, NotSerialized)
    {
        If (3 == Arg0)
        {
            If (CondRefOf (\_SB.PCI0.LPCB.LID0))
            {
                Notify (\_SB.PCI0.LPCB.LID0, 0x80)
            }
        }
    }
}
//EOF
