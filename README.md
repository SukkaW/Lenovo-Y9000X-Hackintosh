<div align="center">
<img src="https://pic.skk.moe/file/sukkaw/gh/y9000x-hackintosh-banner.png" width="350px">
</div>

<h1 align="center">Lenovo LEGION Y9000X 2020 Hackintosh</h1>
<h3 align="center">联想拯救者 Y9000X 2020 黑苹果 OpenCore 引导配置</h3>
<br>

## Disclaimer / 免责声明

Your warranty is now void. Please do some research if you have any concerns before utilizing my project. I am not responsible for any loss, including but not limited to Kernel Panic, device fail to boot or can not function normally, storage damage or data loss, atomic bombing, World War III, The CK-Class Restructuring Scenario that SCP Foundation can not prevent, and so on.

你的保修将完全失效。如果您有任何疑虑，请在使用我的项目之前先进行一些研究。我对任何损失均不负责，包括但不限于 Kernel Panic、设备无法启动或无法正常工作、硬件损坏或数据丢失、原子弹爆炸、第三次世界大战、SCP 基金会无法避免的 CK 级现实重构等。

## Hardware Specifications / 硬件配置

| Specifications | Details |
|:---|:---|
| Computer Model | Lenovo LEGION Y9000X (2020) |
| CPU | Intel Core i9-9980H |
| Memory | DDR4 2666 Mhz. 2x16 GB |
| NVMe SSD | Manually switch to PLEXTOR PX-1TM9PGN+ 1024GiB |
| Integrated Graphics | Intel UHD Graphics 630 |
| Wireless Card | Manually change to BCM94354Z |

## Working & Not Working / 可用与不可用的功能

### Non-Fuctional / 不工作

| Feature | Status | Dependency | Remarks |
| --- | --- | --- | --- |
| Fingerprint Reader<br>指纹识别 | ❌ | Disabled using both SSDT & USB Mapping<br>已通过 SSDT 和 USB 定制禁用 | TouchID is not supported in Hackintosh<br>黑苹果不支持 TouchID |
| Audio playback through speaker<br>通过扬声器播放音频 | ❌ | | Y9000X's Speaker is connected to an unsupported Power Amplifier<br>Y9000X 的扬声器连接在一个无法驱动的功率放大器上 |

### Video and Audio / 音频与视频

| Feature | Status | Dependency | Remarks |
| --- | --- | --- | --- |
| Full Graphics Accleration (QE/CI)<br>图形硬件加速 | ✅ | `WhateverGreen.kext` | |
| Audio Recording<br>麦克风录音 | ✅ | `AppleALC.kext` | |
| Audio Playback through 3.5mm<br>通过 3.5mm 接口播放音频 | ✅ | `AppleALC.kext` | |
| Automatic Headphone Output Switching<br>当插入耳机时自动切换音频输出 | ✅ | `AppleALC.kext` | |

### Power, Charge, Sleep and Hibernation / 电源管理、充电、睡眠、休眠

| Feature | Status | Dependency | Remarks |
| --- | --- | --- | --- |
| Battery Percentage Indication<br>电量百分比显示 | ✅ | | Native supported without patching<br>原生支持，无需补丁 |
| CPU Power Management (SpeedShift)<br>CPU 电源管理 | ✅ | `SSDT-XCPM` | Use `MacBookPro16,4` for beter power management<br>使用 `MacBookPro16,4` 机型以获得更好的电源管理 |
| NVMe Drive Battery Management<br>NVMe 硬盘电源管理 | ✅ | `NVMeFix.kext` | |
| S3 Sleep / Hibernation Mode 3<br>S3 睡眠 / Mode 3 休眠 | ✅ | `SSDT-SLEEP` | |
| Hibernation Mode 25<br>Mode 25 休眠 | ⚠️ | `HibernationFixup.kext` | Require testing<br>有待测试 |
| Battery Life | ⚠️ | ASPM | WIP (仍在实现中)

### Input & Output

| Feature | Status | Dependency | Remarks |
| --- | --- | --- | --- |
| WiFi | ✅ | `AirportFixup.kext` | Suggest to switch Broadcom based card<br>推荐更换博通无线网卡 |
| Bluetooth | ✅ | `BrcmPatchRAM.kext` | Suggest to switch Broadcom based card<br>推荐更换博通无线网卡 |
| USB 2.0, USB 3.0, SD Card Reader | ✅ | `USBMap.kext` | |
| USB 3.1 | ✅ | `SSDT-TB3` | Hotplug fully supported<br>支持全功能热插拔 |
| USB Power Properties in macOS<br>macOS 的 USB 电源属性 | ✅ | `SSDT-XHC1-USBX` | |
| Thunderbolt 3 Hotplug<br>雷电接口热插拔 | ✅ | `SSDT-TB3` | |

### Display, TrackPad and Keyboard / 显示器、触摸板和键盘

| Feature | Status | Dependency | Remarks |
| --- | --- | --- | --- |
| Brightness Adjustments<br>亮度调节 | ✅ | `WhateverGreen.kext`, `SSDT-PNLF`, `AppleBacklightSmoother.kext` | |
| HiDPI | ✅ | | Natively enabled on UHD screen<br>在 UHD 4K 屏幕上原生启用 |
| TrackPad | ✅ | `VoodooI2C*.kext`, `SSDT-TPXX` | All gesture avaliable<br>全部手势可用 |
| Built-in Keyboard | ✅ | | Native supported<br>内置键盘免驱 |
| Fn Keys<br>Fn 功能键 | ✅ | | Native supported<br>内置键盘免驱 |

## Refrence / 必读参考资料

- [dortania's OpenCore Install Guide](https://dortania.github.io/OpenCore-Install-Guide/)
- [dortania's OpenCore Post Install Guide](https://dortania.github.io/OpenCore-Post-Install/)
- [dortania Getting Started with ACPI](https://dortania.github.io/OpenCore-Post-Install/)
- [dortania opencore multiboot](https://github.com/dortania/OpenCore-Multiboot)
- [WhateverGreen Intel HD Manual](https://github.com/acidanthera/WhateverGreen/blob/master/Manual/FAQ.IntelHD.en.md)
- `Configuration.pdf` and `Differences.pdf` in each OpenCore releases.
- [daliansky/OC-little](https://github.com/daliansky/OC-little)
- [OpenCore 简体中文参考手册 (非官方)](https://oc.skk.moe)

**No seriously, PLEASE read those.**

**务必阅读上述参考资料**

## Requirement / 需求和依赖

### Basic / 基本需求

- A macOS machine (optional): to create the macOS installer and build the EFI.
  一台已经安装好 macOS 的机器，用于制作 macOS 安装器和编译本项目
- Flash drive, 12GB or more, for the above purpose.
  一个容量大于等于 12 GiB 的 U 盘
- [ProperTree](https://github.com/corpnewt/ProperTree) to edit plist files on Windows.
  编辑 plist 文件的工具 [ProperTree](https://github.com/corpnewt/ProperTree)
- [MaciASL](https://github.com/acidanthera/MaciASL) for patching ACPI tables and editing ACPI patches.
  用于修补和编辑 ACPI 的工具 [MaciASL](https://github.com/acidanthera/MaciASL)
- [MountEFI](https://github.com/corpnewt/MountEFI) to quickly mount EFI partitions under macOS.
  在 macOS 下挂载 EFI 分区的工具 [MountEFI](https://github.com/corpnewt/MountEFI)
- [IORegistryExplorer](https://developer.apple.com/downloads) for diagnosis.
  用于诊断的 [IORegistryExplorer](https://developer.apple.com/downloads)
- [HackinTool](https://github.com/headkaze/Hackintool) for diagnosis ONLY. Most of the built-in patches are outdated.
  **仅用于** 诊断的 [HackinTool](https://github.com/headkaze/Hackintool)，大部分内置的补丁和工具已经过时、不再适用
- Patience and time, especially if this is your first time Hackintosh-ing.
  耐心和时间。如果你是第一次进行黑苹果，这尤为重要

### Hardware Modification / 硬件修改

#### SSD

Samusung PM981 is not supported AT ALL. Make sure to switch at least one SSD and disable another PM981 (if exists) with SSDT.

三星 PM981 **完全** 无法使用，务必更换至少一块 SSD 硬盘，并通过 SSDT 屏蔽另外一块 PM981（如果存在的话）。

```swift
DefinitionBlock ("", "SSDT", 2, "SUKA", "DNVM", 0x00000000)
{
    External (_SB_.PCI0.RP09.PXSX, DeviceObj) // SSD1
    // External (_SB_.PCI0.RP21.PXSX, DeviceObj) // SSD2

    Method (_SB.PCI0.RP09.PXSX._DSM, 4, NotSerialized) // SSD1
    // Method (_SB.PCI0.RP21.PXSX._DSM, 4, NotSerialized) // SSD2
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
            "class-code", 
            Buffer (0x04)
            {
                 0xFF, 0x08, 0x01, 0x00
            }
        })
    }
}
```

#### Wireless Card / 无线网卡

Although OEM Intel AX200 is now supported by [itlwm](https://github.com/OpenIntelWireless/itlwm), it is still recommended to use Broadcom Wireless card for BETTER (I mean, 100x FASTER!) performance.

虽然原装的 Intel AX200 已经可被 [itlwm](https://github.com/OpenIntelWireless/itlwm) 驱动，但是仍建议使用博通无线网卡以获得 **更好** 的性能（更好，指速度快 **100 倍**）

> If you want to stick to Intel AX200, you have to manually disable `AirportFixup` & `BrcmPatchRAM`, install `itlwm`, and remove DeviceProperties of `PciRoot(0x0)/Pci(0x1D,0x5)/Pci(0x0,0x0)`.<br>
> 如果你执意使用原装的 Intel AX200，你需要手动禁用 `AirportFixup` & `BrcmPatchRAM` 等 Kext、安装 `itlwm`，并去除 `PciRoot(0x0)/Pci(0x1D,0x5)/Pci(0x0,0x0)` 节点下的设备属性。

### Update or Downgrade BIOS Version / 升级或降级 BIOS

Certain version of BIOS firmware is recommended to be used. For now it is recommented to use BIOS v1.05 (`CTEC20WW`) as latest BIOS v1.06 (`CTEC21WW`) is COMELETELY A PIECE OF MESSY SH*T.

Enable `Backflash` settings inside BIOS and you will be able to downgrade the BIOS through installer under Windows directly.

推荐使用特定版本的 BIOS 以获得最佳的使用体验。目前为止，最推荐 BIOS 版本是 v1.05 (`CTEC20WW`)，因为最新版的 BIOS v1.06 (`CTEC21WW`) 简直就是 **一大坨「脏话删除」**。

在 BIOS 中启用 `Backflash` 后，即可在 Windows 下通过 BIOS 安装器降级 BIOS 版本。

[Download BIOS at Lenovo Support Website. 从联想支持网站下载 BIOS。](https://newsupport.lenovo.com.cn/driveDownloads_detail.html?driveId=68032)

### BIOS Settings / 修改 BIOS 设置

- Secure Boot: `DISABLED`
- Intel SGX Control: `DISABLED`
- UEFI/Legacy Boot: `UEFI Only`
- CSM Support: `DISABLED` (If applicable)
- Thunderbolt(TM) Device Preboot Support: `DISABLED` (If applicable)

### Patching Firmware Settings / 修改固件设置

Although settings like CFG Lock and Thunderbolt Security Level is not avaliable under BIOS, it is possible to modify them without `UEFI Shell` or BIOS patching by using [this tool](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Insyde_Advanced_Settings_Tools).

虽然 CFG Lock、雷电接口安全级别等设置不可通过 BIOS 直接修改，但是这些设置可以通过 [这个工具](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Insyde_Advanced_Settings_Tools) 修改。

## Other Information / 其它信息

### How to build EFI / 如何编译本 EFI

There is no prebuilt version of EFI avaliable YET, and it is only able to build under macOS. Use a virtual machine or [action-tmate](https://github.com/mxschmitt/action-tmate) if you have to.

本 EFI **暂时不提供** 预编译版本，并且编译必须在 macOS 下进行。如有必要，请使用虚拟机、或通过 [action-tmate](https://github.com/mxschmitt/action-tmate) 将 GitHub Action 作为 macOS VPS 使用。

Use following command to build the EFI.

使用下述指令编译 EFI：

```bash
git clone https://github.com/SukkaW/Lenovo-Y9000X-Hackintosh
cd Lenovo-Y9000X-Hackintosh
chmod +x **/*.sh
./build.sh
```

Find generated EFI under `Output` folder. Find OpenCore config at `Output/EFI/OC/config_sample.plist` and fill in your own SMBIOS (Follow [the guide](https://dortania.github.io/OpenCore-Post-Install/universal/iservices.html), use model `MacBookPro16,4`) then rename `config_sample.plist` to `config.plist`.

你可以在 `Output` 目录下找到生成的 EFI。OpenCore 配置文件路径为 `Output/EFI/OC/config_sample.plist`，你需要自行生成 SMBIOS 信息（遵循 [这篇教程](https://dortania.github.io/OpenCore-Post-Install/universal/iservices.html) 的步骤，使用机型 `MacBookPro16,4`）并填入配置文件中，然后将 `config_sample.plist` 重命名为 `config.plist`。

----

Use following command to update and rebuild the EFI from upstream.

使用下述指令从上游更新和重新编译 EFI：

```bash
cd Lenovo-Y9000X-Hackintosh
git pull --rebase
chmod +x **/*.sh
./build.sh
```

Everytime you rebuilt the EFI you have to fill in the SMBIOS again. So keep your SMBIOS info saved in a safe place!

每次重新编译 EFI 后你都需要重新填入一次 SMBIOS 信息，所以务必将你的 SMBIOS 信息保存在一个安全的位置！

### Directories Structure / 项目目录结构

```
.
├── ACPI
│   ├── OEM_DSDT # The original DSDT dissembled from OEM BIOS
│   └── SSDT
│       ├── DSL # SSDT source dsl files
│       └── build_acpi.sh # dsl files build script
├── Config
│   └── config_sample.plist # Sample config.plist
├── Kexts
│   ├── Local # Kexts files where there is no way to be downloaded
│   │   ├── ThunderboltReset.kext
│   │   ├── USBMap.kext
│   │   └── XHCI-unsupported.kext
│   └── download_kexts.sh # Use the script to download the rest of the kexts
├── LICENSE
├── OpenCore
│   ├── OldSample.plist # The curent version of OpenCore sample. Used to diff the configuration when update OpenCore to a newer version 
│   └── oc.sh # Script uesd to download OpenCorePkg and construct EFI folder
├── README.md # The file you are currently reading
└── build.sh # Overall build script, will call all the scripts mentioned above.
```

## Donation / 捐赠

Donating to this project is OPTIONAL. But feel free to buy me a coffee if you appreciate my works.

捐赠本项目 **并不是必需的**。但是如果我的项目对你有所帮助，为什么不考虑一下给我买杯咖啡呢？

[爱发电](https://afdian.net/@sukka) | [Patreon](https://www.patreon.com/sukkaw)

## Maintainer / 维护者

**Lenovo-Y9000X-Hackintosh** © [Sukka](https://github.com/SukkaW), Released under the [GPL-3.0](./LICENSE) License.<br>
Authored and maintained by Sukka with help from contributors ([list](https://github.com/SukkaW/Lenovo-Y9000X-Hackintosh/graphs/contributors)).

> [Personal Website](https://skk.moe) · [Blog](https://blog.skk.moe) · GitHub [@SukkaW](https://github.com/SukkaW) · Telegram Channel [@SukkaChannel](https://t.me/SukkaChannel) · Twitter [@isukkaw](https://twitter.com/isukkaw) · Keybase [@sukka](https://keybase.io/sukka)
