---
title: Stable release for the Odroid-C1
created_at: '2016-10-22 08:35:43'
author_name: kivutar
kind: article
tags:
 - Odroid-c1
 - Bug
 - Vsync
social:
  thumbnail: media/c1p.jpg
---

The Odroid-C1 is a single board computer that we have been supporting for a year now. Compared to a Raspberry Pi 3, it is the more powerful emulator, but it lacks integrated Wi-Fi and Bluetooth. It can run mupen64plus pretty well, as well as some PSP games, which is decent for its price.

![C1+](media/c1p.jpg)

The last bug preventing us from tagging the C1 image as stable : a vertical synchronization issue, has now been fixed. Credits to an upgrade of the core components of the system provided by [Hardkernel](https://www.hardkernel.com).

We have updated the download [links](/get/) for C1 so everybody can benefit from this last improvement. If you are already using the latest release on your C1, you can upgrade Lakka using the graphical interface without problems. If you want to acquire a C1, you can buy one online, the new version is called C1+ and is also compatible with the C1 image.

Note: I've noticed display lag when threaded video is enabled. I recommend to disable video threading on the C1. You can do this by turning the advanced settings ON in Settings->Menu, then turning off Threaded Video in Settings->Video.

Note: If you are upgrading from the last release, you can edit your boot.ini to use more colors on the display. Just change 16bpp to 32bpp with a text editor.
