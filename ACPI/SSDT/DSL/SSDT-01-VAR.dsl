DefinitionBlock ("", "SSDT", 2, "SUKA", "AWAC", 0x00000000)
{
    // From SSDT-00-DAWRIN
    External (OSDW, MethodObj)

    External (STAS, IntObj)
    External (HPTE, IntObj)
    External (DPTF, IntObj)
    External (OSYS, FieldUnitObj)

    Scope (\)
    {
        If (OSDW())
        {
            // Force STAS to One in order to disable AWAC and enable RTC
            STAS = One
            // Force HPTE to 0 in order to disable HPET Device
            HPTE = 0
            // Force DPTF to 0 in order to disable DPTF Framework
            DPTF = 0
            // Patch OSYS to native value of darwin
            // Pair with SSDT-03-XOSI to make sure it works
            OSYS = 0x07DF
        }
    }
}
