//
// In config ACPI, OSID to XSID
// Find:     4F534944
// Replace:  58534944
//
// In config ACPI, OSIF to XSIF
// Find:     4F534946
// Replace:  58534946
//
// In config ACPI, _OSI to XOSI
// Find:     5F4F5349
// Replace:  584F5349
//
// Search _OSI......
//
DefinitionBlock("", "SSDT", 2, "SUKA", "XOSI", 0)
{
    // From SSDT-00-DAWRIN
    External (OSDW, MethodObj)

    Method(XOSI, 1)
    {
        If (OSDW ())
        {
            // With "Windows 2015", OSYS will be 0x07DF
            // which will match native value of darwin
            If (Arg0 == "Windows 2015")
            {
                Return (0xFFFFFFFF)
            }
            Else
            {
                Return (Zero)
            }
        }
        Else
        {
            Return (_OSI (Arg0))
        }
    }
}
