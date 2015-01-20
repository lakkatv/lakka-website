---
title: 'New hardware: Odroid C1'
created_at: '2015-01-20 23:16:41'
author_name: floreal
kind: article
social:
  thumbnail: media/in-case.jpg
---

## We received a package

Lately we had several request for an odroid port, so we asked [Hardkernel](http://hardkernel.com/) if they'd like to provide us some of their awesome board.

And then, yesterday we recieved this package :

![The package](media/package.jpg)

Here is what we found inside :

Two [Odroid C1](http://odroid.com/dokuwiki/doku.php?id=en:odroid-c1) boards and everything needed to run them:

![Package content](media/content.jpg)

So, we got twice, as we were told :

> - ODROID-C1 Revision2 Board : the only difference is EMI/ESD optimisation and IR receiver location. The software is 100% same. 
> - HDMI Cable
> - USB-DC plug cable
> - ODROID-C1 Case Blue
> - 8GB MicroSD UHS-1 C1 Linux
> - USB-UART Module Kit

![A board](media/board.jpg)

And once the board in it's case.

![In it's case](media/in-case.jpg)

Thanks a lot to Hardkernel. Now we will start working on the odroid C1 ports.

## News about the development

As the C1 has a Mali chipset for video acceleration, we worked on the last day fixing it For Allwiner boards (Cubieboard 2 and Cubitruck). The black flickering and black bacground issue when using lakka / xbm menu are fixed.

Here is what changed since last Update:

- Improvement: Merged OpenELEC 5 build system
- Fix: Lakka menu bug on Allwinner
- Fix: pcsx_rearmed inputs (finally) for imx / allwinner
- Fix: NOOBs image conflict with OpenELEC
- Fix: broken nouveau driver on the Generic image (black screen bug)
- Added: Support of uEnv.txt for Allwinner
- Added: Support of custom background on Lakka menu
- Added: PPSSPP support for Allwiner
- Fix: splashscreen doesn't show on imx6
- Fix: NFS broken on imx6
- Updated: mupen64plus, fceumm, ppsspp
- Improvement: Package reorganization

The release is getting closer and closer !!
