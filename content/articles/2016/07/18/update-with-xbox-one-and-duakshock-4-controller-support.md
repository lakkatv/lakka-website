---
title: Update with Xbox One and Dualshock 4 controller support
created_at: '2016-07-18 11:59:39'
author_name: kivutar
kind: article
tags:
 - PC
 - MAME
 - Uzebox
 - Lutro
 - Xbox One
 - Dualshock 4
social:
 thumbnail: 'media/ps4xboxone.jpg'
---

## Kernel update for the Generic images

Our kernel has been updated to 4.6.3, which is the stable branch.

We also added a workaround for an audio bug, and experimental support for Nvidia Maxwell (untested yet).

## Support for the Xbox One and Dualshock 4 controllers

![Dualshock 4 and Xbox One controllers](media/ps4xboxone.jpg)

With the money from the donations, I bought a wired Xbox One controller and a Dualshock 4. Both are now officially supported by Lakka, and have been tested on all the computers.

Wireless support will come in a second time.

## Small changes

 * MAME2003 updated
 * Mupen64plus updated
 * compatibility fixes to build Lakka on Ubuntu
 * Updated icons, game database, and core informations
 * Tyrquake enabled on all images
 * Uzebox packaged
 * Updated bsnes-mercury, reduces input lag
 * Updated snes9x-next, reduces input lag
 * Updated joypad configs, more than 10 new joypads are supported
 * Updated fceumm, reduces input lag
 * Updated Lutro
 * Updated Odroid-C1 MALI blobs

## How to upgrade?

If you're using the previous stable release, this upgrade is safe and you can get it directly from our graphical interface.

If you're using an older build, you may get an error about partition size. We changed the partition size (from 256 to 512) in the last release, so you may have to backup and reflash from scratch.

## What's next?

The next update will certainly bring RetroArch 1.3.6 or 1.3.7. I could have shipped it sooner, but it's better to have regular releases.

Thanks for your support.
