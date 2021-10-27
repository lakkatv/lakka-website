---
title: Lakka 2.0 stable release!
created_at: '2017-04-28 14:00:00'
author_name: kivutar
kind: article
tags:
 - Stable
 - Release
 - LibreELEC
 - RetroArch 1.5.0
 - Xbox One S
social:
  thumbnail: media/netplay.png
---


After 6 months of community testing, we are proud to announce Lakka 2.0!

This new version of Lakka is based on LibreELEC instead of OpenELEC. Almost every package has been updated!

We are now using RetroArch 1.5.0, which includes so many changes that listing everything in a single blogpost is rather difficult.

<div class="row imagegrid">
	<div class="col-md-6"><img src="media/korean.png"></div>
	<div class="col-md-6"><img src="media/netplay.png"></div>
	<div class="col-md-6"><img src="media/icons.png"></div>
	<div class="col-md-6"><img src="media/osk.png"></div>
</div>

There are also tons of new cores to play new types of games!

## Full Changelog

### Important changes

 * LibreELEC 8.0 stable rebase
 * RetroArch 1.5.0
   * Simplified menu
   * Intuitive netplay: you create or join netplay rooms directly from the menu.
   * Ability to change the icon set on the fly
   * Revamped virtual keyboard
   * Korean language support
 * New server for downloads and updates
 * Almost all libretro cores are now enabled on every image

### Important bugfixes

 * Important Vsync Bug fixed on Orange Pi
 * White background bug fix for WeTek
 * Resolution bug fix for WeTek
 * Fixed physical keyboard typing in the menu

### New supported hardware

Lakka 2.0 adds support for these new boards and boxes:

<div class="row imagegrid">
	<div class="col-md-3"><img src="/images/rpi0.jpg"></div>
	<div class="col-md-3"><img src="/images/odroidc2.jpg"></div>
	<div class="col-md-3"><img src="/images/wetekplay.jpg"></div>
	<div class="col-md-3"><img src="/images/wetekcore.jpg"></div>
	<div class="col-md-3"><img src="/images/wetekhub.jpg"></div>
	<div class="col-md-3"><img src="/images/s805.jpg"></div>
	<div class="col-md-3"><img src="/images/s802.jpg"></div>
	<div class="col-md-3"><img src="/images/s905.jpg"></div>
</div>

 * Raspberry Pi Zero W
 * Odroid C2
 * WeTek Play 2
 * WeTek Core
 * WeTek Hub
 * S805 TV Boxes
 * S802 TV Boxes
 * S905 TV Boxes

Note that we continue supporting the boards that already work with Lakka 1.0: Odroid, Orange Pi, UDOO, etc.

### New cores (emulators and game engines)

In this new version, almost all of the libretro cores on every platform are now enabled. This is to increase netplay compatibility across different versions of Lakka.

<div class="row imagegrid">
	<div class="col-md-4"><img src="media/rpg.png"></div>
	<div class="col-md-4"><img src="media/rick.png"></div>
	<div class="col-md-4"><img src="media/mrboom.png"></div>
</div>

 * EasyRPG, a new core, allows to run RPG Maker 2000/2003 games
 * UAE4ARM, an ARM optimized Amiga emulator
 * PUAE, another Amiga Emulator
 * CrocoDS, an Amstrad CPC emulator
 * VICE, a Commodore 64 emulator
 * PocketCDG, a Karaoke player
 * XRick, Rick Dangerous game engine
 * Frodo, a Commodore 64 emulator (work in progress)
 * Mr.BOOM, a bomberman clone
 * bSNES packaged for the PC images

### Updated cores

All the cores have been updated. 
Non exhaustive list:

 * Atari800
 * Hatari
 * Snes9x
 * Beetle PCE Fast
 * FCEUMM
 * Beetle PC-FX
 * Genesis Plus GX
 * Picodrive
 * Beetle Saturn
 * Nestopia
 * Beetle PSX
 * FB Alpha
 * Handy
 * MAME 2003
 * Mupen64plus
 * ScummVM
 * PCSX ReARMed
 * Tyrquake
 * PCSX Rearmed
 * Parallel-n64
 * bSNES Mercury
 * Beetle PSX
 * Beetle Saturn
 * Dinothawr
 * Beetle PCE
 * mGBA
 * Lynx
 * Snes9x2002
 * Snes9x2005

The core updates include support for netplay and cheats, and also new renderers for PSX and N64 emulators.

### Updated controller support

The joypad profiles has been updated. The following joy pads required specific changes to work properly (and now do):
 * XBox One S
 * Wii U GameCube Adapter
 * OUYA controller
 * NVidia Shield Controller
 * Gen Game S3 Controller

## Installing or upgrading

Our [installation tutorial](/get/) has been updated with the new images.

Users of Lakka 2.0 Release Candidate can upgrade directly through the graphical interface.

Users of the stable release of December 2016 will have to reinstall from scratch. Advanced users can also attempt a manual upgrade by placing the TAR in the Update folder.

Thank you all for using Lakka! Special thanks to all the testers and donators who made this release possible.
