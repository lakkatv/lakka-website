---
title: Lakka 6.1 release
created_at: '2026-02-21 10:00:00'
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

A long-awaited new version of Lakka is finally here! After the release of Lakka 5.0 in April 2024, we took our time to modernize the base system, refresh the entire core ecosystem, and introduce several highly requested features. Today, we’re excited to present Lakka 6.1 - our biggest update in years.

# Release summary

## Major Base System Upgrades

Lakka 6.1 is now built on the LibreELEC 12.2 build system, bringing a modernized foundation, improved hardware support, and updated drivers across the board. In addition, we moved to the currently latest long-term-support kernel series (6.18), integrating all required upstream changes to ensure that every supported platform can run reliably on this kernel.

We also ship with the latest stable RetroArch 1.22.2, including all its new UI improvements, latency optimizations, and quality-of-life enhancements.

- Mesa updated to [25.1.9](https://docs.mesa3d.org/relnotes/25.1.9.html)
- Updated Linux kernel
  - mainline: 6.18.7
  - raspberry: 6.12.66 (6.18.y is not yet stable enough)
  - amlogic: 6.18.0

## New and Updated Libretro Cores

Just like previous releases, all existing cores have been updated to their latest upstream versions. But Lakka 6.1 also introduces a fresh batch of newly added libretro cores, expanding the range of systems and experiences you can emulate.

- `amiarcadia` - Arcadia 2001 / Interton / Emerson consoles
- `amiberry` - Commodore Amiga / CD32
- `anarch` - Doom-engine
- `ardens` - Arduboy
- `b2` - BBC Micro
- `bsnes_jg` - Super Nintendo
- `clownmdemu` - Sega Mega Drive / Genesis
- `dice` - Early CPU‑less arcade machines
- `doublecherrygb` - Nintendo Game Boy / Game Boy Color
- `doukutsu_rs` - Cave Story
- `gam4980` - Handheld LCD electronic games
- `geargrafx` - PC Engine / TurboGrafx‑16
- `gearlynx` - Atari Lynx
- `holani` - Nintendo DS
- `lrps2` - Sony Playstation 2 (supersedes `pcsx2`)
- `m2000` - Casio PV-1000 / PV-2000
- `melondsds` - Nintendo DS
- `noods` - Nintendo DS
- `panda3ds` - Nintendo 3DS
- `pd777` - Bandai Pippin / PD‑series hardware
- `pzretro` - PZ Retro
- `skyemu` - Nintendo Game Boy Advance / DS
- `tamalibretro` - Tamagotchi
- `virtualxt` - IBM PC/XT

## Raspberry Pi Composite Optimized Images

One of the most exciting additions in Lakka 6.1 is official Raspberry Pi images designed specifically for CRT televisions. These builds include:

- Composite‑optimized video output
- Correct analog timings
- Preconfigured resolutions for 240p/480i
- Tweaked RetroArch settings for authentic CRT behavior

This makes Lakka 6.1 the easiest way yet to build a true retro gaming setup using a Raspberry Pi and a classic CRT TV. You can find more information in separate [article](/articles/2024/05/02/rpi-composite/).

## Set-up script

A new script was added, that is run during the first boot. After flashing the image you can modify two text files, that will be used during the first boot to set-up Wi-Fi and add or override default RetroArch configuration.

Edit `wifi-config.txt` file to configure Wi-Fi connection. Just uncomment `SSID=` and `PSK=` lines and add your Wi-Fi network name (`SSID`) and Wi-Fi password (`PSK`) and these values will be used to connect to your Wi-Fi network.

Edit `retroarch-overrides.txt` file and add RetroArch configuration keys/values that will be added to the default RetroArch configuration file shipped with Lakka.

Values from above files are used only during the very first boot after flashing the image during the partition set-up. Modifying these files for subsequent boots has no effect.

# Full Changelog

A detailed list of all changes, fixes, and updates is available on our [GitHub](<%= config[:links][:github] %>/compare/v5.0...v6.1).

# Known issues

See [GitHub](<%= config[:links][:github] %>/issues) for information about currently open bugs and issues and also for possible workarounds for these bugs/issues.

# Final notes

You can download the latest release from [Lakka download page](/get/). If you want to follow the development of Lakka more closely, you can download [latest Lakka development builds](<%= @config[:devel][:'all-latest'] %>).

If you want to show your support for further development of the Libretro projects and ecosystem, you can learn more [here](https://retroarch.com/index.php?page=donate).

Thank you for your patience during this long development cycle! We’d like to extend our deepest thanks also to the entire Lakka and Libretro community — contributors, testers, translators, and especially the developers behind the incredible libretro cores. Your dedication, creativity, and collaboration make each release possible.

And as always, happy retro-gaming!
