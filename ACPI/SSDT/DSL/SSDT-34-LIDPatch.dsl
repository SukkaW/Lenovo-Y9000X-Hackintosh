//
// In config ACPI, _LID to XLID
// Find:     5F4C4944 00
// Replace:  584C4944 00
//
DefinitionBlock("", "SSDT", 2, "OCLT", "LIDpatch", 0)
{
    External(_SB.PCI0.LPCB.LID0, DeviceObj)
    External(_SB.PCI0.LPCB.LID0.XLID, MethodObj)
    External(_SB.PCI9.FNOK, IntObj)

    Scope (_SB.PCI0.LPCB.LID0)
    {
        Method (_LID, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                if(\_SB.PCI9.FNOK==1)
                {
                    Return (0)
                }
                Else
                {
                    Return (\_SB.PCI0.LPCB.LID0.XLID())
                }
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.LID0.XLID())
            }
        }
    }
}
//EOF
