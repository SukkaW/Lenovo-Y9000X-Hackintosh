/*
 * Detect Darwin (OSX) to enable other patches
 * Credits @osy86 & @Rehabman
 */
//
// To enable ACPI debug logging in AppleACPIPlatform:
// Add boot args: acpi_layer=0x8 acpi_level=0x2 debug=0x100
// (https://pikeralpha.wordpress.com/2013/12/23/enabling-acpi-debugging/)
//
// To retrieve the ACPI debug output in macOS:
// log show --last boot --predicate 'process == "kernel" AND senderImagePath CONTAINS "AppleACPIPlatform"' --style compact | awk '/ACPI Debug/{getline; getline; print}'
//
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
