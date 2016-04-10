---
title: Christmas release
created_at: '2015-12-24 11:17:47'
author_name: kivutar
kind: article
tags:
  - Release
  - OpenELEC 6
  - Bugfix
  - Avahi
  - Snes9x
social:
  thumbnail: media/santa.jpg
---

A new release is available!

![Santa in Secret of Mana](media/santa.jpg)

## Core packages upgraded

Some core packages were upgraded. We're trying to follow OpenELEC 6 without loosing i386 and BIOS support.

 * Kernel upgraded to 4.3 for the PC images, with GPU blobs
 * Systemd upgraded for all images except Allwinner ones
 * Glibc upgraded
 * Udevil upgraded

This kernel update for PC is known to fix some compatibilities with graphic cards.

## RetroArch upgraded

This fixes the joypad hotplug bug that affected the two last releases.

It also improves the display of the history list.

## Avahi

We ensure that Avahi is built for every image, allowing you to connect your Lakka box without knowing the IP, using the local domain:

    ssh root@lakka.local

## Snes9x

The Snes9x Libretro core have been packaged and enabled on the PC builds instead of snes9x-next. This core is slower than snes9x-next, but have better compatibility. I was able to play Bomberman 5 with the multitap, and some Satellaview roms.

## Conclusion

This release will serve as a clean basis to build the future version of Lakka. The year 2016 will bring a lot of long awaited GUI integration, like the ability to upgrade Lakka directly from RetroArch. Now that both Lakka and RetroArch have regular stable releases, we can focus on implementing new features. The Libretro team started working on cores again, they are currently porting Reicast, the Dreamcast emulator :)

We hope that you can all enjoy Christmas with your families. We received some mails of users building some Lakka boxes as present for their children or for their parents!
