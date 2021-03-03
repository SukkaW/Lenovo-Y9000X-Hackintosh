// Force STAS to One in order to disable AWAC and enable RTC
DefinitionBlock ("", "SSDT", 2, "SUKA", "AWAC", 0x00000000)
{
    External (STAS, FieldUnitObj)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            STAS = One
        }
    }
}
