DefinitionBlock("", "SSDT", 2, "SUKA", "RMCF", 0)
{
    External (_SB.PCI0.LPCB.PS2K, DeviceObj)

    Scope (_SB.PCI0.LPCB.PS2K)
    {
        Name(RMCF, Package()
        {
            "Keyboard", Package()
            {
                "Custom PS2 Map", Package()
                {
                    Package() { },
                    // "e037=64", // No need to match PrtSc = F13, it is fixed by default
                    "46=80",   // Fn + K = Deadkey
                    "e045=80", // Fn + P = Deadkey
                    "1d=80", // Fn + B = Deadkey
                    "54=80", // Fn + S = Deadkey
                },
            },
        })
    }
}
//EOF
