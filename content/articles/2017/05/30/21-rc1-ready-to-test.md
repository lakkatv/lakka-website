---
title: Lakka 2.1 RC1 ready to test
created_at: '2017-05-30 17:00:00'
author_name: kivutar
kind: article
tags:
 - RC
 - RetroArch 1.6.0
social:
  thumbnail: media/russian.png
---

Lakka 2.1 RC1 is ready to test! You can download the builds from [https://le.builds.lakka.tv](https://le.builds.lakka.tv)

Please note that this is a release candidate meant for testers.

![Russian support](media/russian.png)

## Changelog

 * RetroArch updated to pre-1.6.0
   * Russian language
   * Icon sets more complete
   * Font selection fix, useful to set a font that supports simplified Chinese
   * Record config selection fix, it will make it easier to use recording and streaming from the interface
   * Simplified netplay menu, we removed the old netplay menu from the main menu
   * More beautiful animated background, we are now using additive blending to make the ribbon shine
   * Display the current Lakka version in the System Information, useful for testers
 * New cores (Experimental, not enabled on all images)
   * Dolphin, this core is unfinished but you can launch it if you enable Shared Context in the advanced settings.
   * MeowPC98, untested
   * px68k, untested
   * OpenLara, untested
   * Redream, untested
   * melonDS, untested
   * SameBoy, untested
   * PokeMini, untested
 * Almost all the libretro cores got updated and tested
 * Updated game database, including metadata for Lutro and Cave Story games
 * Updated shaders, clearly increase the compatibility on some graphic cards
 * Support for S812 Amlogic TV Boxes (thanks to Ntemis)
 * Updated LibreELEC 8 stable branch, updated kernels, improvements for the imx6 builds
 * Fix for the boot arguments of Odroid-XU3/4 (thanks to gouchi)
 * More gamepad modules enabled in the kernel
 * HDMI audio fixes on WeTek Play 2
 * Ability to use the Raspberry Pi as a Wi-Fi access point (thanks to duduke)
 * Audio support for the RGB-Pi SCART adapter (thanks to the Recalbox team for the donation of this adapter, and to vik for the donation of a CRT screen)
 * Support for twin joypads like the Xin Mo
 * A lot of code cleaning

## Installing or upgrading

You can upgrade from Lakka 2.0 by dropping the img.gz in the Update folder and rebooting.

As always, we would like to thank all the users and the testers for their help on the project. There has been many reports on our new tracker, and the team is now doing its best to fix and improve the distribution.
