---
title: Official release for Raspberry Pi 3
created_at: '2016-06-12 20:52:04'
author_name: kivutar
kind: article
tags:
 - RPi3
 - Mupen64plus
 - ScummVM
 - DOSBox
 - mGBA
social:
  thumbnail: media/rpi3.jpg
---

## Raspberry Pi 3 official support

We received two RPi3 units last month and I spent some time testing bluetooth, WiFi, and the overhaul stability of our OS on the small device. The results are good enough, and we can consider that this port is stable.

![RPi3](media/rpi3.jpg)

Performance on the RPi3 is OK, good enough to run N64 games with the rice gfx plugin, and also some lightweight PSP games.

The download pages have been updated to reflect that change.

## Minor changes

 * Mupen64plus works on all supported platforms now, including PC 32bit
 * The default GBA emulator is now mGBA, that doesn't require a BIOS, except on RPi1 where gpsp have better performance
 * Fix for the OdroidC1 image
 * Fix HDMI audio on some Radeon graphic cards
 * Updated kernel for Odroid-XU3, fixes an important bug on some TVs
 * Online Updater mostly disabled, except for Thumbnail and Lakka firmware. All assets, shaders, cores and other stuff is already updated through the firmware updates anyway
 * Experimental Shield controller support
 * Reicast, the Dreamcast emulator, available on PC 64bit
 * Updated joypad configs
 * Updated shaders
 * Beetle Wonderswan enabled on all images
 * ScummVM fixed on all images
 * DOSBox fixed on all images
 * Updated Lutro
 * Updated snes9x-next
 * Fix a bug in the PC installer

Thanks for your support.
