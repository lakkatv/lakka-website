---
title: Good news for Odroid XU3, PS1 scanning, and more
created_at: '2015-09-26 20:56:38'
author_name: kivutar
kind: article
tags:
  - Odroid-XU3
  - Build Server
  - Menu
  - Database
social:
  thumbnail: media/type0.png
---

## ARM Mali released a new driver for the XU3 GPU

I got an email from Hardkernel a week ago, informing me that there is a new MALI driver out for the Odroid-XU3. The previous drivers were very slow on fbdev due to a tiling problem. This is no more the case. The new driver is very fast, I was able to play some heavy PSP games (Tekken 6) without lag!

The XU3 nightly builds have been updated. They contain the new blobs and the updated kernel (thanks @memeka).

The only issue is that on my display, RetroArch is capped to 55 fps instead of 60 fps, but we may be able to fix it (and then release).

More good news, Hardkernel is sending us an Odroid-XU4. This sample will go to Twinaphex, the main developer, or RetroArch.

## PS1 Games scanning

The new menu system in our nightly builds are now based off of an offline database, and you need to scan your game collections to build the playlists on our XMB-like menu. This new scanning system is still a work in progress (that's why we didn't release a new stable version yet). Some special ROMs, like Arcade ROMs and CDs, are incompatible with our checksum scanning approach.

Last week, I implemented the scanning of PlayStation CDs in RetroArch. This is a step forward, but there are still many systems lacking scanning, like PCE-CD, PSP, Sega-CD, and Saturn...

## Moving our development servers

Lakka takes time to build (about 2h on a powerful machine). We were using a server hosted in France, lent by a generous friend, but the server had to be closed, and so I had to find another solution.

A long time ago, @floreal took contact with the GCC Compile Farm in order to setup a continuous integration. They gave us access to the farm, but we never really used it until now. It happens to be a very convenient alternative. The server that we now use is more powerful than the previous one. The managers of the farm are friendly, and they agreed to setup some dependencies of OpenELEC that are important for us.

We are very lucky to have access to the GCC Compile Farm. Without it, we would not be able to provide new releases so easily. Special thanks to the Free Software Foundation for this very useful initiative.
