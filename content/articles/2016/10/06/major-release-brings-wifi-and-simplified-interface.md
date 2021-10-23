---
title: Major release brings Wi-Fi and simplified interface
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

We have deployed a new release of Lakka to our servers. This is a major release, so you will have to purge your retroarch.cfg as explained at the bottom of [this page](/doc/Upgrading-Lakka/). You can also just backup your data and reflash.

## Simplified interface

In order to make Lakka easier to use for beginners, I flagged a lot of settings as **advanced**. It simplifies the interface a lot by exposing only easy to understand options first.

You can of course switch back to the advanced mode by toggling **Show Advanced Settings** in the **Menu Settings**.

![Simplified interface](media/simplified.png)

## Wi-Fi configuration interface

This feature have been requested many times over the past two years of Lakka's existence. It was easier to implement than I expected.

We've added a new settings group called "Wi-Fi". It will scan for wireless networks if you have a wireless card.

![Wi-Fi interface](media/wifi.png)

Pressing OK will prompt you for the passphrase. You will have to use the UP and DOWN arrows to type the code as in old arcade games. Press OK to go to the next letter, BACK to erase, and START when you're done.

This feature is still young and subject to bug, but I've tested it on PC, RPi3, UDOO, and WeTek_Play and I was able to connect to my router.

## Media tabs

RetroArch can now display playlists of Music, Video, and Images.

![Media tabs](media/media.png)

These lists act like separate history lists. You have to load the content at least one time through the Load Content menu entry. This will add content to the corresponding playlist based on its type.

For now these new tabs are hidden, but you can enable them in the Menu Settings.

Also, if you're using the Advanced Settings, you will be able to hide the Settings Tab itself. This can be useful for preventing your kids from messing with these settings. The downside to this is that then the only way to enable the Settings Tab will be through the command line.

## ScummVM, NXEngine, Lutro scanning

The scanning processes have been improved, you can now scan for ScummVM, NXEngine and Lutro games. Be sure to read the [documentation](/doc/ScummVM/) on how to achieve this as some special steps are required. Thanks to **@RobLoach** for his efforts on this.

## 32bit UEFI boot

**@gouchi** found a way to fix 32bit UEFI boot. This should allow Lakka to run on boards like the LattePanda.

UEFI compatible images are not yet exposed on our website, but you can get them from [our server](https://mirror.lakka.tv/nightly/).

## New cores

A few new libretro core have also been added to the builds:

 * **Beetle PSX HW:** the hardware accelerated version of Beetle PSX, available on PC
 * **Beetle Saturn:** A new Saturn emulator, available on PC
 * **GlupeN64:** A new Nintendo 64 emulator, set as default core on Raspberry Pi where it is faster than Mupen64plus

Thanks for all the support messages you've sent us, we really love to work on this project!
