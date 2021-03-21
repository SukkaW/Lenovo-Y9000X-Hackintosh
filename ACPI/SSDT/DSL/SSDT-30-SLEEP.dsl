/**
 * # Comprehensive Sleep-patches for Y9000X.
 *
 * ## Abstract
 *
 * This SSDT tries to be a comprehensive solution for sleep/wake-problems on most modern Y9000X.
 * It was developed on an ThinkPad X1C6 with a ThinkPad T480 in mind.
 * It immitates the behaviour of a macbookpro16,4 which is perfectly adequate for modern, Coffee Lake based Laptop.
 *
 * For most of the Laptop its perfectly possible to set SleepType=Windows in BIOS while getting perfect S3-Standby in OSX.
 * That's the recommended setting as it enables "modern standby" in Windows for dual-boot-systems.
 *
 * With this SSDT it is perfectly possible to have ACPI-sleepstates S0 (DeepIde), S3 (Standby) & S4 (Hibernation) working.
 * So generally hibernatemode 0, 3 & 25 in OSX' terms are possible. There might be smaller bugs and hickups though. 
 * F.e. S0-DeepIdle has a much higher power draw on sleep as S3 atm. There are also reports about such behaviour on 
 * native OSX & native Windows. Bugs are not infrequently rooted in poor ACPI-implementations or OSX-bugs and not 
 * directly rooted in hackintoshing.
 *
 * No special setup via pmset per se needed, but may be needed anyways depending f.e. on your bluetooth implementation.
 * If you have played with `pmset` and want to restore the defaults to have a clean state, use `sudo pmset -a restoredefaults`.
 *
 * Bottom line: We are near a relative native pm-/sleep-setup with this. 
 *
 *
 * ## Background:
 *
 * Sleep on hackintoshes is a complicated topic. More complicated as mostly percieved. The problem is
 * that many functions of power management, sleep & wake are handled by the Macbook's embedded controller (EC)
 * / SMC and therefor many functions and devices are simply missing on Hackintoshes (f.e. the topcase-device). 
 * What we do have are our own, vendor-specific ECs and a myriade of different names for different sleep-methods.
 *
 * On top of this, most parts of the config have to be configured properly to accomplish working, non (or at least less) 
 * power-loosing sleep-states. Many of the (partly) solutions out there don't try to replicate the sleep-behaviour 
 * of a genuine macbook, but try to hide shortcomings and bugs with "ons-size-fits-all"-patches.
 * 
 * With this reasoning in mind, this SSDT tries to match the sleep-behaviour of a macbookpro14,1 as closely as possible.
 *
 *
 * # Notice:
 *
 * Please remove every GPRW-, Name6x-, PTSWAK-, FixShutdown-, WakeScren-Patches or similar prior using.
 * If you adapt this patches to other models, check the occurence of the used variables and methods on your own DSDT beforehand.
 *
 * Credits @benbender @tylernguyen
 * Rewritten by @SukkaW (https://skk.moe) for Y9000X
 */

DefinitionBlock ("", "SSDT", 2, "SUKA", "SLEP", 0x00001000)
{
    // Common utils from SSDT-00-DARWIN
    External (DTGP, MethodObj) // 5 Arguments
    External (OSDW, MethodObj) // 0 Arguments

    // Sleep-config from BIOS
    External (S0ID, FieldUnitObj) // BIOS-S0 enabled, "Windows Modern Standby"
    External (ESPC, FieldUnitObj) // S3 Enabled?

    // Package to signal to OS S3-capability. We'll add it if missing.
    External (SS3, FieldUnitObj) // S3 Enabled?    
    External (_S3)

    Name (DIEN, Zero) // DeepIdle (ACPI-S0) enabled
    Name (INIB, One) // Initial BootUp

    // This make OSX independent of the BIOS-sleep-setting and force-enable S3
    If (OSDW ())
    {
        // Enable S3
        //   0x00 enables S3
        //   0x02 disables S3
        ESPC = Zero

        // Disable S0 for now
        S0ID = Zero

        // This adds S3 for OSX, even when sleep=windows in bios.
        If (ESPC == Zero && !CondRefOf (\_S3))
        {
            // ATTENTION! Use your own value from DSDT always!
            Name (\_S3, Package (0x04)  // _S3_: S3 System State
            {
              0x05,
              Zero,
              Zero,
              Zero
            })

            SS3 = One
        }
    }


    // SLTP named on OSX but already taken on ThinkPad.
    // Use XLTP to prevent any potential confliction.
    Name (XLTP, Zero)

    // Save sleep-state in XLTP on transition. Like a genuine Mac.
    Method (_TTS, 1, NotSerialized)  // _TTS: Transition To State
    {
        XLTP = Arg0
    }

    // @SEE https://github.com/tianocore/edk2-platforms/blob/master/Platform/Intel/KabylakeOpenBoardPkg/Acpi/BoardAcpiDxe/Dsdt/Gpe.asl
    // @SEE https://pikeralpha.wordpress.com/2017/01/12/debugging-sleep-issues/
    Scope (_GPE)
    {
        // This tells xnu to evaluate _GPE.Lxx methods on resume
        Method (LXEN, 0, NotSerialized)
        {
            Return (One)
        }
    }

    External (_SB.PCI0.LPCB, DeviceObj)
    External (_SB.PCI0.LPCB.EC0, DeviceObj)
    External (_SB.PCI0.LPCB.LID0, DeviceObj)

    External (_SB.PCI0.LPCB.EC0.ACAD._PSR, MethodObj) // 0 Arguments
    External (_SB.PCI0.XHC.USBM, MethodObj) // 0 Arguments
    External (XPRW, MethodObj) // 2 ARguments
    External (ZPTS, MethodObj) // 1 Arguments
    External (ZWAK, MethodObj) // 1 Arguments

    External (_SB.PCI0.XHC.PMEE, FieldUnitObj)
    External (_SB.PCI0.XDCI.PMEE, FieldUnitObj)
    External (_SB.PCI0.HDAS.PMEE, FieldUnitObj)
    External (_SB.PCI0.GLAN.PMEE, FieldUnitObj)

    External (_SB.PCI0.LPCB.EC0.HPLD, FieldUnitObj)
    External (_SB.PCI0.GFX0.CLID, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC0.LIDF, FieldUnitObj)
    External (_SB.PCI0.LPCB.LID0.PLID, IntObj)
    External (PWRS, FieldUnitObj)

    Scope (\)
    {
        // Fix sleep
        Method (SPTS, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.LID0.PLID != \_SB.PCI0.LPCB.EC0.LIDF)
            {
                \_SB.PCI0.LPCB.LID0.PLID = \_SB.PCI0.LPCB.EC0.LIDF
                \_SB.PCI0.GFX0.CLID = \_SB.PCI0.LPCB.LID0.PLID
            }
        }

        // Fix wake
        Method (SWAK, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.LID0.PLID != \_SB.PCI0.LPCB.EC0.LIDF)
            {
                \_SB.PCI0.LPCB.LID0.PLID = \_SB.PCI0.LPCB.EC0.LIDF
                \_SB.PCI0.GFX0.CLID = \_SB.PCI0.LPCB.LID0.PLID
            }

            // Wake screen on wake
            Notify (\_SB.PCI0.LPCB.LID0, 0x80)

            // Update ac-state
            \PWRS = \_SB.PCI0.LPCB.EC0.ACAD._PSR ()
        }

        If (CondRefOf (\ZPTS))
        {
            Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
            {
                // On sleep
                If (OSDW () && (Arg0 < 0x05))
                {
                    SPTS ()
                }

                ZPTS (Arg0)

                // On shutdown
                If (OSDW () && (Arg0 == 0x05))
                {
                    If (CondRefOf (\_SB.PCI0.XHC.PMEE))
                    {
                        \_SB.PCI0.XHC.PMEE = Zero
                    }

                    If (CondRefOf (\_SB.PCI0.XDCI.PMEE))
                    {
                        \_SB.PCI0.XDCI.PMEE = Zero
                    }

                    If (CondRefOf (\_SB.PCI0.GLAN.PMEE))
                    {
                        \_SB.PCI0.GLAN.PMEE = Zero
                    }

                    If (CondRefOf (\_SB.PCI0.HDAS.PMEE))
                    {
                        \_SB.PCI0.HDAS.PMEE = Zero
                    }
                }
            }
        }

        If (CondRefOf (\ZWAK))
        {
            // Patch _WAK to fire missing LID-Open event and update AC-state
            Method (_WAK, 1, Serialized)
            {
                // On Wake
                If (OSDW () && (Arg0 < 0x05))
                {
                    SWAK ()
                }

                Local0 = ZWAK(Arg0)

                Return (Local0)
            }
        }

        // Patch _PRW-returns to match the original as closely as possible
        // and should remove instant wakeups and similar sleep-probs
        Method (GPRW, 2, Serialized)
        {
            If (OSDW ())
            {
                Local0 = Package (0x02)
                {
                    0x00, 
                    0x00
                }

                Local0[0x00] = Arg0

                If (Arg1 >= 0x04)
                {
                    Local0[0x01] = 0x00
                }

                Return (Local0)
            }

            Return (XPRW (Arg0, Arg1))
        }
    }

    // Handles sleep/wake on ACPI-S0-DeepIdle
    Scope (_SB.PCI0.LPCB)
    {
        Method (_PS0, 0, Serialized)
        {
            If (OSDW () && DIEN == One && INIB == Zero)
            {
                \SWAK ()
            }

            If (INIB == One)
            {
                INIB = Zero
            }
        }

        Method (_PS3, 0, Serialized)
        {
            If (OSDW () && DIEN == One)
            {
                \SPTS ()
            }
        }
    }

    Scope (_SB)
    {
        // Enable ACPI-S0-DeepIdle
        Method (LPS0, 0, NotSerialized)
        {
            // If S0ID is enabled, enable deep-sleep in OSX. Can be set above.
            // Return (S0ID)
            Return (DIEN)
        }
    }
}
//EOF
