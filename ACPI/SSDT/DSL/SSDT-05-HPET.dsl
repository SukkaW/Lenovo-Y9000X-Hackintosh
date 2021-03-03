//
DefinitionBlock ("", "SSDT", 2, "CORP", "HPET", 0x00000000)
{
    External (HPTE, IntObj)
    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            HPTE = 0
        }
    }
}
