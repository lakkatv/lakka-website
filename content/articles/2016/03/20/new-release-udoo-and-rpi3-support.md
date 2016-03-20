---
title: New release, UDOO and RPi3 support
created_at: '2016-03-20 19:26:18'
author_name: kivutar
kind: article
tags:
 - UDOO
 - imx6
 - RPi3
 - GameGirl
 - Release
social:
  thumbnail: media/udoo.jpg
---

## UDOO support

![UDOO](media/udoo.jpg)

UDOO provided us with a board, asking for official Lakka support. Powered by an imx6 processor like the Cubox-i, it has a lot of ports and even ship an arduino. The support was easy to add, since this family of boards is already supported by OpenELEC. I just had to backport some patches.

## RPi3 experimental support

![RPi3](media/rpi3.png)

The very popular Raspberry gets a new hardware update : the RPi3 comes with a more powerful CPU, and onboard Bluetooth and WiFi.

We've not received yet our unit, so for now the support for RPi3 is marked as experimental and remains untested and incomplete. Still, users have been able to boot our RPi2 images after I changed a few things, and it is already usable. Except WiFi and Bluetooth.

I should receive an RPi3 (and an RPi Zero) soon.

## GameGirl

![GameGirl](media/gamegirl.jpg)

David Perrenoud started building an RPi Zero based handheld console. It will use Lakka as main OS. The first prototype targets very unexpensive hardware, the RPi Zero is $5, the screen is around $3, plus a buzzer and some buttons.

David managed to connect the screen using the GPIOs in a very efficient way. He achieved a 120FPS, while most common screen solutions out there are stuck at 25FPS!

Audio have been tested, inputs are still in the work.

This project have an [hackaday.io page](https://hackaday.io/project/10207-gamegirl-the-retro-console-done-right). You can support us by registering and liking the page. Each like will give us $1 to buy hardware parts.

I'm very excited with this hardware project. I plan to build a specific Lakka image for it, so everything would work out of the box.

## New in Lakka

 * Fuse removed in profit of OverlayFS: fixes the core/info/assets updating bug, and allow saving generated joypad configs from the GUI
 * Updated Kernel on most images
 * Updated Mesa and libdrm to support more graphic cards
 * Updated RetroArch
   * Display the current IP in the GUI 
   * Fix scanning duplication
 * RetroAchievements support in Picodrive
 * All audio packages updated as of OpenELEC 6
 * Reicast (the SEGA Dreamcast emulator) packaged, but disabled for now
 * Prosystem emulator enabled on every images
 * Tyrquake update
 * Genesis Plus GX update
 * FCEUMM update
 * Beetle-PSX update
 * PrBoom update
 * Updated database with a lot of new metadata, such as the game genre, and long descriptions
 * FBA update
 * MAME 2003 update
 * Mupen64plus update
 * Cap32 update
 * Handy update
 * Fix snes9x as default core on Generic images

## Other ports

I've spend some time on the Odroid-C2 port, but it is far from being ready yet. I'm still stuck with u-boot and Retroarch compilation.

The OrangePi PC port finally compiles, but doesn't boot yet. I should receive an OPiPC soon to troubleshoot that.
