DefinitionBlock ("", "SSDT", 2, "SUKA", "INIT", 0x00000000)
{
    // From SSDT-00-DAWRIN
    External (OSDW, MethodObj)

    External (STAS, IntObj)
    External (HPTE, IntObj)
    External (DPTF, IntObj)
    External (OSYS, FieldUnitObj)
    External (GPHD, FieldUnitObj)
    External (USTP, FieldUnitObj)
    External (TPDD, UnknownObj)

    Scope (\)
    {
        If (OSDW ())
        {
            // Force STAS to One in order to disable AWAC and enable RTC
            STAS = One
            // Force HPTE to 0 in order to disable HPET Device
            // DO NOT DISABLE HPTE as it is relied on Y9000X audio under Windows
            // HPTE = 0
            // Force DPTF to 0 in order to disable DPTF Framework
            DPTF = 0
            // Force GPHD to 2 in order to enable GPI0 device
            GPHD = 2
            // Force TPDD to One inorder to disable I2C1.TPAD device (while it will enable PS2M device)
            // TPDD = One

            // Enable APIC Interrupt Mode
            USTP = One
            // Patch OSYS to native value of darwin
            // Pair with SSDT-03-XOSI to make sure it works
            OSYS = 0x07DF
        }
    }
}
