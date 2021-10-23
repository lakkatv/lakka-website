---
title: Some news about Lakka
created_at: '2015-05-12 13:42:50'
author_name: kivutar
kind: article
tags:
  - Odroid-XU3
  - mupen64plus
  - MALI
  - XMB
  - GLUI
  - Touch
  - OpenELEC
social:
  thumbnail: media/hexa.png
---

## Lakka is not dead

I received a lot of messages on IRC asking if this project was dead or on stand by, mostly because the questions on IRC remained unreplied for some time.

The reason here, is that I'm traveling to South East Asia, mainly Vietnam, where the timezone is different and where the internet connection is very unstable.

The development of Lakka continues, it's even accelerated, and I will list the things I've been working on here.

I apologize for not being very present on IRC lately, I will try to make an effort about it, but I also think that the community should begin to self support.

## The XU3 port is here

![Odroid-XU3](media/odroid-xu3.jpg)

Lakka have been ported to the Odroid-XU3. We currently support installation to the SD card. I've not yet tried the eMMC module, but it could work. The port is not stable yet, so there's no need to release it right now. I prefer to let it mature little bit more. Some vsync bugs need to be fixed, and some cores perform weirdly, however, the most difficult part is done now and you can get the development builds [here](https://sources.lakka.tv/nightly/OdroidXU3.arm/) as usual.

I would like to thanks the support team of Hardkernel, they helped us with this port and they are trying hard to find a good fix for the vsync issues on the C1 and the XU3.

## mupen64plus works on MALI

<iframe width="560" height="315" src="https://www.youtube.com/embed/f9zfYee9f6g" allowfullscreen></iframe>

There was this segfault when launching mupen on MALI GPUs. It's gone now, thanks to the work of the libretro developers. We can now play Nintendo 64 games on Bananapi, Cubieboard2, Cubietruck, Odroid-C1, and Odroid-XU3. This is a big step forward. However, some regressions affects the Raspberry Pi 2. So I will upgrade this package on our development builds, and wait for this RPi2 regression to be fixed before releasing a new version of Lakka.

## XMB used by default

XMB, our new menu codebase, is now stable enough to be used instead of our old codebase. Our development builds now ship this new menu. It looks exactly like the previous Lakka Menu, with the white icons and the red background. There are still some display bugs, and the Settings menu is not where it should be, but we need to move forward. With this new XMB menu, we can now edit all the settings, use the file browser, edit the core options, and remap the inputs for each core.

## Some work done for RetroArch

I've been working on some touch friendly menu for the iOS and Android ports of RetroArch. This work does not affect Lakka directly, however it shows that our fusion with libretro is effective: we are doing code for them, and they are doing code for us.

Here is a screenshot of this menu:

![GLUI](media/glui.png)

Based on our old good GLUI menu, the GL rewrite of RGUI, improved with some backgrounds and a scrollbar. It supports touch gestures like scrolling with dragging. The size of the elements on the screen will try to adapt to the PPI of your screen. For platforms without PPI support, we provide a default PPI value and a way to override this value in the settings.

# Some work done on RetroArch for Lakka

Twinaphex and his team have been working on some code for the future of Lakka. They implemented non-blocking background image loading. This will open the ability to display some background fanarts for each core or each game, as this feature has been requested many times by some users on Youtube.

They are also working on a big game database. This database is very fast, and very compact. We will ship it in offline mode, so some scanning of your ROM collection will be possible without an internet connection.

Once this database stuff will be ready, we will adapt XMB so the game list will result from queries on the database. This means that the exact name of the game will be displayed instead of the file name. This also mean that some fanart scraping will be easy to implement cleanly.

## Some experiments

Bibalox has been experimenting some new menu design, based on hexagons. It's cute, and I would love to see it implemented in RetroArch (however RetroArch menu code is not yet ready for that).

![HEXA](media/hexa.png)

You can clone the love2d prototype [here](https://github.com/lakkatv/lakka-menu-hexa).

After RetroArch 1.1 is released, we will try to improve the menu abstraction in RetroArch to make this kind of different UI possible.

# Some problems with OpenELEC

OpenELEC, which Lakka is based on, will soon drop support of BIOS and 32bit PCs. So we will have a lot of work to do if we want to support those in Lakka.

## DualShock 3

I bought a DualShock 3, in order to improve the support for this wireless joypad on Lakka. My goal is to automate the bluetooth pairing, but I still need to get my hands on a working bluetooth dongle…
