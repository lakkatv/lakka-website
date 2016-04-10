---
title: Release for Raspberry Pi 2, the Odroid-C1 and more!
created_at: '2015-03-08 00:00:27'
author_name: kivutar
kind: article
tags:
  - RPi2
  - Odroid-c1
  - Lutro
  - Release
  - libretro
  - Port
---

A new release of Lakka is out. All the platform builds have been updated, and we can finally add official support for the Odroid-C1 and the Raspberry Pi 2.

## Raspberry Pi 2

The new Raspberry Pi is out, for the same price as the previous version. It can run most arcade games without lag, same for most Playstation games.
We ship the snes9x-next core, which has better sound and compatibility than pocketSNES.

Here is a video make by one of our users, demonstrating the result:

<iframe width="560" height="315" src="https://www.youtube.com/embed/R8FuEXmL34s" allowfullscreen></iframe>

Known bugs for the RPi2 build:

 * Launching RetroArch is slow (10+ sec)
 * Launchin a game is slow (10+ sec)
 * The menu is laggy (30fps)
 * No audio on the N64 emulator

Those bugs are not blocking, we will fix them in the next weeks.

## Odroid-C1

This powerful device was donated by Hardkernel. It is incredibly fast, and at the same price as the Raspberry Pi 2. It can run snes9x-next and pcsx_rearmed with absolutely no lag.

A video of the Odroid-C1 running Lakka:

<iframe width="560" height="315" src="https://www.youtube.com/embed/ZFWbEIA7w8Q" allowfullscreen></iframe>

Known bugs for the Odroid-C1 build:

 * Resolution is set to 1080p and there is no detection, you may want to change this value in the bootloader configuration
 * No vsync, so there is some tearing on some games
 * No N64 emulation, it segfaults on launch
 * The menu is too fast (130fps)

Those bugs are tough, we may not be able to fix them… 

## What's new in this release?

So, aside those two new ports, the next release will add two major features:

 * Common shaders are now shipped in the OS
 * Some cores have been updated
 * A lot of system packages have been updated (system-219)
 * We ship a new core, Lutro

## Lutro

Lutro is a new libretro core. It was started by *enygmata* one year ago. It embeds a lua interpreter and tries to be compatible with the [love2d](https://love2d.org/) API.

With this core, you can develop your own games for Lakka in Lua. Lua is a very easy programming language, so it lowers the barrier and let you focus on your game. And once your game runs on Lutro, you will be able to test it on the wide variety of platforms supported by RetroArch.

This video shows a sample platformer game running on lutro in RetroArch:

<iframe width="420" height="315" src="https://www.youtube.com/embed/n6eLX_GPXGg" allowfullscreen></iframe>

Lutro is still experimental and lacks ogg/vorbis support to play background music, but all the other features to develop small retro games are there, and we provide some demo games to get you started, available on the libretro github page.

Have fun :)
