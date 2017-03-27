---
title: Lakka 2.0 RC4 is out
created_at: '2017-03-27 21:28:19'
author_name: kivutar
kind: article
tags:
 - RC
 - LibreELEC
 - H3
 - VICE
 - CrocoDS
 - PocketCDG
 - XRick
social:
  thumbnail: media/rc4.png
---

Lakka 2.0 RC4 is available for testers. This is certainly the last Release Candidate before the stable release.

![RC4](media/rc4.png)

## Changelog

  * LibreELEC 8.0 stable branch merged
  * Almost all libretro cores are now enabled on every image
  * Updated joypad configurations
  * More silent boot process
  * H3 (Orange Pi) Vsync bug fixed
  * RTL8192EU Wi-Fi driver added on every image
  * joyutils packaged, allows to calibrate joypads
  * h3disp packaged, allows to change resolution on H3
  * Support for the Wii U GameCube Adapter, enabled on PC and RPi for now
  * Support for OUYA controller
  * Core updates:
    * Beetle PCE Fast
    * FCEUMM
    * Beetle PC-FX
	* Genesis Plus GX, adds cheat support
	* Picodrive, adds cheap support
	* Beetle Saturn, improves performance
	* Nestopia
	* Beetle PSX, adds SABR support
	* FB Alpha, cross platform netplay support
	* Handy
	* MAME 2003
	* Mupen64plus
	* ScummVM
	* PCSX ReARMed
  * New cores packaged:
    * CrocoDS, Amstrad CPC emulator
    * VICE, Commodore 64 emulator
    * PocketCDG, Karaoke software
    * XRick, Rick Dangerous game engine
    * Frodo, Commodore 64 emulator, work in progress

## Installing or upgrading

You can find OS images at this address: [http://le.builds.lakka.tv/](http://le.builds.lakka.tv/).

Users of Lakka 2.0 RC1, RC2 or RC3 can upgrade directly from the graphical interface.

Users of the stable release of December have to reinstall from scratch. In case you know what you are doing, you can also attempt a manual upgrade by placing the TAR in your Update folder.

Please remember that even if we're close to the stable release, these builds are still a Release Candidate destined to testers.

Thank you all for using Lakka!
