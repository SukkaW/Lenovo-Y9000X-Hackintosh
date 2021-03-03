// Enable GPI0
DefinitionBlock("", "SSDT", 2, "SUKA", "GPI0", 0)
{
    External(GPHD, FieldUnitObj)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            GPHD = 2
        }
    }

}
