---
title: Lakka 5.0 release
created_at: '2024-04-13 10:00:00'
author_name: vudiq
kind: article
tags:
 - Release
social:
  thumbnail: media/thumb.png
---

![Thumbnail](media/thumb.png)
_Thumbnail by [jdalmanza](https://www.instagram.com/jdalmanza/)_


New version of Lakka has been released!

We are happy to announce the new and updated version of Lakka.


# Release summary

Changes since version 4.3:

- Based on LibreELEC 11.0 build system
- RetroArch updated to [1.17.0](https://www.libretro.com/index.php/retroarch-1-17-0-release/)
- Cores updated to their most recent versions
- New cores added:
  - `dirksimple`: Dragon's Lair player
  - `dosbox-core`: DOSBox
  - `ep128emu`: Enterprise 64/128, Videoton TVC, Amstrad CPC and ZX Spectrum
  - `geolith`: Neo Geo AES and MVS Cartridge Systems
  - `jaxe`: XO-CHIP/S-CHIP/CHIP-8
  - `numero`: TI-83
  - `thepowdertoy`: The Powder Toy
  - `vice_xpet`: Commodore PET
  - `vircon32`: Virtual Game Console inspired by 16/32-bit systems
  - `vitaquake2`: Quake II
- Mesa updated to [24.0.4](https://docs.mesa3d.org/relnotes/24.0.4.html)
- Updated Linux kernel
  - mainline: 6.1.84
  - raspberry: 6.1.77
  - amlogic: 6.1.38
- Added images for following devices
  - Raspberry Pi 5
  - Raspberry Pi Zero 2 in Retroflag GPI Case 2W
  - Raspberry Pi Compute Module 4 in Retroflag GPI Case 2
  - Generic PC:
    - Support for nVidia GPUs (using proprietary nVidia driver, separate image)
  - Allwinner SOC:
    - OrangePi Zero2
    - OrangePi 3 LTS
  - Amlogic SOC:
    - BananaPi CM4
    - BananaPi M2 Pro
    - BananaPi M2S
    - BananaPi M5
    - Radxa Zero
    - Radxa Zero2
    - WeTek Core
    - WeTek Hub
    - WeTek Play 2
  - Rockchip SOC:
    - Firefly ROC-PC Plus
    - OrangePi 4 LTS
    - Radxa Rock Pi 4 Plus
    - Radxa Rock Pi 4 C Plus
- [Retrorama](https://forums.libretro.com/t/retrorama-for-xmb/43690) - theme and dynamic wallpapers for XMB

[Full changelog](<%= config[:links][:github] %>/compare/v4.3...v5.0)


# Known issues

See [GitHub](<%= config[:links][:github] %>/issues) for information about currently open bugs and issues and also for possible workarounds for these bugs/issues.


# Final notes

You can download the latest release from [Lakka download page](/get/). If you want to follow the development of Lakka more closely, you can download [latest Lakka development builds](<%= @config[:devel][:'all-latest'] %>).

If you want to show your support for further development of the Libretro projects and ecosystem, you can learn more [here](https://retroarch.com/index.php?page=donate).

Happy retro-gaming!
