---
title: Lakka 2.1 RC6 released with new Allwinner and Rockchip images and Kiosk mode
created_at: '2017-11-07 21:42:00'
author_name: kivutar
kind: article
tags:
 - RC
 - RetroArch 1.6.7
 - OdroidXU4
 - Parallel-N64
 - Kiosk mode
 - Allwinner
 - Rockchip
social:
  thumbnail: media/tkb.jpg
---

Lakka 2.1 RC6 is available for download. It's a very important update that features support for a lot of new boards and fixes many compatibility issues.

![Asus Tinkerboard](media/tkb.jpg)

You can download the builds at [https://le.builds.lakka.tv](https://le.builds.lakka.tv)

## Changelog

 - Allwinner images: We now have completely new builds for Allwinner boards, based on the mainline kernel and u-boot. With this new project, we can support many new boards with very little efforts. Basing off a recent kernel allows greater compatibility with newer joypads and dongles. These new images will replace the a10, a20, H3 and Bananapi images.
 - OdroidXU4 update: A kernel and u-boot update fixes the eMMC boot. It also improves TV detection and adds more resolutions. Special thanks to Hardkernel for gifting an XU4 and the new eMMC modules.
 - Kiosk mode: Enabling the kiosk mode will prevent users to access the settings. You can setup a password to disable the kiosk mode. This work is provided by Brunnis.
 - New Rockchip Images for the Tinkerboard, ROCK64 and MiQi boards, using the latest 4.4.96 LTS kernel and mainline 2017.11 u-boot, provided by Ntemis. With future plans to switch to mainline v4.14 LTS.
 - Parallel-N64 emulator with multithreaded Angrylion.
 - Scanning for Gamecube CDs.
 - Minor UI fixes.
 - Core updates.

## Known issues

 - DualShock 4 input bugs on some controllers
 - Keyboard input bug on Parallel-N64 on PC
 - Parallel-N64 crashes on PC 32bit
 - Animated background and audio issues in Shared Context mode (with Dolphin)
 - Typing Wi-Fi password with a keyboard on RPi is broken, use a joypad instead

## Future plans

 - An Allwinner 64bit project

## Installing or upgrading

You can upgrade from Lakka 2.0 or 2.1 by dropping the img.gz into the Update folder and rebooting.

Thank you!
