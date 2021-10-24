---
title: Lakka 2.1 RC5 released with improved Dolphin support and experimental ASUS TinkerBoard support
created_at: '2017-10-11 15:30:00'
author_name: kivutar
kind: article
tags:
 - RC
 - RetroArch 1.6.7
 - Dolphin
 - TinkerBoard
 - LibreELEC
social:
  thumbnail: media/dolphin.jpg
---

We are proud to announce the release of Lakka 2.1 RC5!

This version required a lot of teamwork. We merged in LibreELEC 8.2 Bêta changes, updated RetroArch, and updated all the emulators and other libretro cores.

Ntemis added support for some Rockchip boards, including the ASUS Tinkerboard. These new images are still experimental.

You can download the builds from [https://le.builds.lakka.tv](https://le.builds.lakka.tv)

![Citra](media/dolphin.jpg)

## Changelog

 - LibreELEC 8.2 Bêta merged
   - Kernel updates for PC, RPi and more
   - New wifi drivers and fixes
   - SAMBA 4
   - RPi firmware updates
   - Switch back to OpenSSL
 - RetroArch updated to 1.6.7
   - RetroArch is now able to run Dolphin without having to manually switch to shared context
   - Scanner fixes
   - Favorites ROMs tab
   - UI Performance improvements
   - Playlist entries can be renamed
   - Updated translations
   - Countless minor fixes
 - **All** the libretro cores updated to their latest version. A few notable changes:
   - Important Atari 800 improvements
   - Important Dolphin update, improved performance
   - Reicast now builds for i386 and ARM (but still unable to run ROMs)
   - SameBoy fixed
   - FB Alpha update
   - Important Beetle-PSX update
   - New game engine by Rob Loach: ChaiGame
   - Important Citra update
   - Nestopia fixed
 - New Rockchip based boards supported (experimental)
   - ASUS TinkerBoard
   - MiQi
   - ROCK64
   - RK3328

## Known issues

 - DualShock 4 input bugs on some controllers
 - Keyboard input bug on Parallel-N64 on PC
 - Parallel-N64 crashes on PC 32bit
 - Animated background and audio issues in Shared Context mode (with Dolphin)
 - Typing Wi-Fi password with a keyboard on RPi is broken, use a joypad instead

## Future plans

 - Merge all Allwinner projects (A10, A20, BananaPi, OrangePi) into a single project
 - Switch to the open source GPU driver on Raspberry Pi
 - DragonBoard port

## Installing or upgrading

You can upgrade from Lakka 2.0 or 2.1 by dropping the img.gz into the Update folder and rebooting.

Thank you all!
