---
title: Lakka 2.1.1 with Raspberry Pi 3 B+ support
created_at: '2018-06-25 23:30:00'
author_name: kivutar
kind: article
tags:
 - Stable
 - RetroArch 1.7.3
 - RPi3B+
social:
  thumbnail: media/3bplus.jpg
---

Lakka 2.1.1 is out!

This new version of Lakka retro gaming operating system now supports the new Raspberry Pi 3 B+ and Amlogic S912 based boxes.

![Raspberry Pi 3 B+](media/3bplus.jpg)

Many packages have been updated with a focus on stability.

## Changelog

  - Important updates
    - RetroArch 1.7.3
    - LibreELEC 8.2 fixes
    - XU4 kernel update to 4.14
    - Rockchip kernel upgrade
    - Allwinner kernel upgrade
  - New cores
    - Higan, the famous SFC emulator from byuu
    - nSide, a fork of higan v106 with additional features
    - Cannonball, an enhanced OutRun engine
    - MAME2003 plus, updated 2018 version of MAME (0.78) for libretro. with added game support and improvements
    - Snes9x 2005 plus, Snes9x 1.43 plus BLARRG APU
    - FreeIntv, Mattel Intellivision emulator
    - Game Music Emu core
  - Core updates
    - Citra, the 3DS emulator
    - ChaiLove, the chaiscript game engine
    - MAME2003, the multi arcade emulator
    - PPSSPP, the PSP emulator
    - Sameboy, the Game Boy emulator
    - Desmume, the Nintendo DS emulator
    - and many more 
  - Fixes
    - Keyboard fix for ARM based devices
    - Bluetooth fix for S905/S912
    - H3 boot
  - Bonus
    - Support for more gamepads (Zeroplus based gamepads)
    - Support more Commodore cores
    - Libretro overlays are now exposed in SAMBA
    - Project cleanup
    - XU4 fix display of the partition resize messages

## Thanks

Special thanks to all our contributors whom without this project would not be: Vudiq, Gouchi, Ntemis, the libretro team and all the patreons!
