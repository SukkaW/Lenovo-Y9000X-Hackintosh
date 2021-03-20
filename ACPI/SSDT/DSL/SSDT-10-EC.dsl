/*
 * AppleUsbPower compatibility table for Skylake+.
 *
 * Be warned that power supply values can be different
 * for different systems. Depending on the configuration
 * these values must match injected IOKitPersonalities
 * for com.apple.driver.AppleUSBMergeNub. iPad remains
 * being the most reliable device for testing USB port
 * charging support.
 *
 * Try NOT to rename EC0, H_EC, etc. to EC.
 * These devices are incompatible with macOS and may break
 * at any time. AppleACPIEC kext must NOT load on desktops.
 * See the disable code below.
 *
 * While on some laptops, this kext is essential to access EC
 * region for battery status etc. Please ignore EC related
 * patches under the circumstance.
 *
 * Reference USB: https://applelife.ru/posts/550233
 * Reference EC: https://applelife.ru/posts/807985
 */
DefinitionBlock ("", "SSDT", 2, "SUKA", "SsdtEC", 0x00001000)
{
    External (OSDW, MethodObj) // 0 Arguments
    External (_SB_.PCI0.LPCB, DeviceObj)

    Scope (\_SB.PCI0.LPCB)
    {
        Device (EC)
        {
            Name (_HID, "ACID0001")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSDW ())
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}
