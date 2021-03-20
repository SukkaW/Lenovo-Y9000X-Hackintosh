/*
 * Detect Darwin (OSX) to enable other patches
 * Credits @osy86 & @Rehabman
 */
DefinitionBlock ("", "SSDT", 2, "SUKA", "BASE", 0)
{
    Method (DTGP, 5, NotSerialized)
    {
        If ((Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
        {
            If ((Arg1 == One))
            {
                If ((Arg2 == Zero))
                {
                    Arg4 = Buffer (One)
                        {
                             0x03
                        }
                    Return (One)
                }

                If ((Arg2 == One))
                {
                    Return (One)
                }
            }
        }

        Arg4 = Buffer (One)
            {
                 0x00
            }
        Return (Zero)
    }

    Scope (\)
    {
        // Detection of Darwin (Native Method Provided by macOS's ACPI)
        Method (OSDW, 0, NotSerialized)
        {
            If (CondRefOf (\_OSI, Local0))
            {
                If (_OSI ("Darwin"))
                {
                    Return (One) // is Darwin
                }
            }
            Return (Zero)
        }
    }
}
