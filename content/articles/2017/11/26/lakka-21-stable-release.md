---
title: Lakka 2.1 Stable release
created_at: '2017-11-26 22:53:00'
author_name: kivutar
kind: article
tags:
 - Stable
 - RetroArch 1.6.9
 - OdroidXU4
 - Kiosk mode
 - Allwinner
 - Rockchip
 - 3DS
 - Gamecube
 - Dreamcast
social:
  thumbnail: media/lakka.png
---

After 6 month of intense development and bugfixes, the team is proud to announce the stable release of Lakka 2.1!

This release is a huge step forward in many aspects: UI, emulator cores, and supported hardware.

![lakka.png](media/lakka.png)

You can download the builds from our installation [tutorial](/get).

## Changelog

 - Merged LibreELEC 8.2 stable
   - Kernel updates for PC, RPi and more
   - New wifi drivers and fixes
   - Samba 4
   - RPi firmware updates
   - Switch back to OpenSSL
 - RetroArch updated to 1.6.9
   - Updated cores to latest upstream versions
   - Updated shaders (clearly improved compability on some graphic cards)
   - Completely new game engine by Rob Loach: ChaiLove
   - Kiosk mode: Enabling the kiosk mode will prevent users to access the settings. You can setup a password to disable the kiosk mode. This work is provided by Brunnis.
   - Updated game database and metadata
   - Updated joypad autoconfigs
   - More beautiful animated background, we are now using additive blending to make the ribbon shine
   - Icon sets more complete
   - Font selection fix, useful to set a font that supports simplified Chinese
   - Record config selection fix, it will make it easier to use recording and streaming from the interface
   - Simplified netplay menu, we removed the old netplay menu from the main menu
   - Updated translations
   - Scanner fixes, scanning for Gamecube CDs
   - Favorites ROMs tab
   - Parallel-N64 (Nintendo 64) with multithreaded Angrylion
   - Completely new cores:
     - Citra - Nintendo 3DS (only PC 64-bit image)
     - Dolphin - Nintendo GameCube / Wii (all images)
     - OpenLara - Tomb Raider (all images
     - Redream - Sega Dreamcast (all images)
     - MeowPC98 - PC98 (all images)
     - MelonDS - Nintendo DS (all images)
     - SameBoy - Nintendo Game Boy/Game Boy Color (all images)
     - MAME2003-Midway (all images)
     - px68k - Portable SHARP X68000 (all images)
 - Support for S812 Amlogic TV Boxes (thanks to Ntemis)
 - Fix for the boot arguments of Odroid-XU3/4 (thanks to gouchi)
 - HDMI audio fixes on WeTek Play 2
 - Ability to use the Raspberry Pi as a Wi-Fi access point (thanks to duduke)
 - Audio support for the RGB-Pi SCART adapter (thanks to the Recalbox team for the donation of this adapter, and to vik for the donation of a CRT screen)
 - Support for twin joypads like the Xin Mo
 - New Rockchip based boards: ASUS TinkerBoard, MiQi, ROCK64
 - Allwinner images: We now have completely new builds for Allwinner boards, based on the mainline kernel and u-boot. With this new project, we can support many new boards with very little efforts. Being based on a recent kernel increase compatibility with newer joypads and dongles. These new images will replace the a10, a20, H3 and Bananapi images.
 - OdroidXU4 update: A kernel and u-boot update fixes the eMMC boot, improves TV detection and adds more resolutions. Special thanks to Hardkernel for gifting an XU4 device and the new eMMC modules.
 - U-boot on Rockchip and Allwinner updated to 2017.11 stable
 - Netcat packaged, useful to use network commands in RetroArch
 - Sixpair packaged
 - Kernel highlights:
   - Rockchip images: 4.4.99 LTS
   - Allwinner images: 4.14 LTS
   - More gamepad modules enabled
   - Real time kernel for PC and RPi, should reduce input lag
   - Performance governor for PC and RPi, should stabilize framerate

## Known issues

 - DualShock 4 input bugs on some controllers
 - Keyboard input bug on Parallel-N64 on PC
 - Parallel-N64 crashes on PC 32bit
 - Animated background and audio issues in Shared Context mode (with Dolphin)
 - Typing Wi-Fi password with a keyboard on RPi is broken, use a joypad instead

## Installing or upgrading

You can upgrade from Lakka 2.0 or 2.1 by dropping the img.gz into the Update folder and rebooting.

Except for the new Allwinner and S802 and S812 images, where you will have to do a manual upgrade.

Thank you!
