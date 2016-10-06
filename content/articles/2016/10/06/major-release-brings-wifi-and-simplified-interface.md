---
title: Major release bings Wi-Fi and simplified interface
created_at: '2016-10-06 09:52:24'
author_name: kivutar
kind: article
tags:
 - Wifi
 - Menu
 - N64
 - RPi3
 - mupen64plus
 - glupen64
 - XMB
 - ScummVM
 - NXEngine
 - Lutro
 - 32bit
 - UEFI
social:
  thumbnail: 'media/wifi.png'
---

A new release of Lakka have been deployed to our servers. This is a major release, you will have to purge your retroarch.cfg as explained at the bottom of [this page](/doc/Upgrading-Lakka/) if you want to avoid bugs. You can also just backup your data and reflash.

## Simplified interface

In order to make Lakka easier to use for begginers, I flagged a lot of settings as **advanced**. It simplifies the interface a lot by exposing only easy to understand options first.

You can of course switch back to the advanced mode by toggling **Show Advanced Settings** in the **Menu Settings**.

![Simplified interface](media/simplified.png)

## Wi-Fi configuration interface

This feature have been requested many times over the two years of existance of Lakka. It was finally easier to implement that I thought.

A new setting group called Wi-Fi have been added. It will scan the wireless networks if you have a wireless card.

![Wi-Fi interface](media/wifi.png)

Then pressing OK will prompt you for the passphrase. You will have to use the UP and DOWN arrows to type the code as in old arcade games. Press OK to go to the next letter, BACK to correct, and START when you're done.

This feature is still young and subject to bug, but I tested it on PC, RPi3, UDOO and WeTek_Play and I was able to connect my router.

## Media tabs

RetroArch can now display playlists of Music, Video and Images.

![Media tabs](media/media.png)

These lists act like separate history lists. You first have to load the content one time through the Load Content menu entry, then it will be added to the corresponding playlist based on its type.

For now these new tabs are hidden, but you can enable them in the Menu Settings.

Also, if you're using the Advanced Settings, you will be able to hide the Settings Tab itself. This can be useful to prevent your kids messing up with the settings. But then the only way to enable the Settings Tab again will be to use the command line interface.

## ScummVM, NXEngine, Lutro scanning

The scanning process have been improved, and you can now scan Scummvm, NXEngine and Lutro games. Be sure to read the documentation on how to achieve this, as some special steps are required. Thanks to **@RobLoach** for his efforts on this.

## 32bit UEFI boot

**@gouchi** found a way to fix 32bit UEFI boot. This should allow Lakka to run on boards like LattePanda.

UEFI compatible images are not exposed on our website yet. But you can get them from [our server](http://mirror.lakka.tv/nightly/).

## New cores

A few new libretro core have been added to the builds:

 * **Beetle PSX HW:** the hardware accelerated version of Beetle PSX, available on PC
 * **Beetle Saturn:** A new Saturn emulator, available on PC
 * **GlupeN64:** A new Nintendo 64 emulator, set as default core on Raspberry Pi where it is faster than Mupen64plus

Thanks for all the support messages you sent us. We really love to work on this project.
