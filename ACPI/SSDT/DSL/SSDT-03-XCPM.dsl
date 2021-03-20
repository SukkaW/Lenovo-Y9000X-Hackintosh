/*
 * XCPM power management compatibility table.
 */
DefinitionBlock ("", "SSDT", 2, "CORP", "XCPM", 0x00003000)
{
    // From SSDT-00-DAWRIN
    External (OSDW, MethodObj)

    External (\_SB.PR00, ProcessorObj)

    Scope (\_SB.PR00)
    {
        If (OSDW ())
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (!Arg2)
                {
                    Return (Buffer (One)
                    {
                        0x03
                    })
                }
                Return (Package (0x02)
                {
                    "plugin-type",
                    One
                })
            }
        }
    }
}
