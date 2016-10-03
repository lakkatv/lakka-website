---
title: Lakka update including RetroArch 1.3.6
created_at: '2016-08-23 20:49:51'
author_name: kivutar
kind: article
tags:
 - RetroArch
 - Wifi
 - OdroidXU3
 - Lutro
social:
  thumbnail: 'media/lutro.png'
---

Dear Lakka users,

I just updated the download links to the latest builds that were already available on our update servers.

If you are already running the previous stable version, you can upgrade from the menu, but don't forget to refresh your retroarch.cfg to get the new settings values.

## Changelog

 - Updated RetroArch to 1.3.6, this brings in all the new shiny stuff about downloading free games directly from the menu.
 - Updated kernel and GPU blobs for OdroidXU3. Performance is said to be better.
 - Atari800 packaged
 - Assets, core informations, databases updated
 - Fixed FBA scanning
 - Updated Gambatte, fixes the savestates bug
 - Fixed command line updater for imx6
 - Added an ncurses interface for easier wifi configuration (still command line based)
 - I moved the builds to a new server provided by a sponsor

## What's next?

In the next weeks, we will add support for beetle-saturn (the new saturn emulator by the mednafen author) and beetle-psx-hw (the GL rendered playstation emulator). Those changes are already in our git tree (thanks to floreal). We still need to update some other cores before we release this, since some things have been renamed and the core info files have vanished.

I have ordered a Steam Controller with the money given from the donations. Twinaphex informed me that libretro's paypal account has been shut down. I think that paypal is not safe anymore and that we should stop using it. I'm going to take a look at Patreon and see if it fits our organization. If you have any advice, please tell us.

I also started developing a small game using Lutro, I hope it will be something that I can finish.

It may be time for us to switch to LibreELEC.tv, since OpenELEC is now dead, and they will delete their servers sooner or late. We will need to add back support for i386 and BIOS and maintain that on our side. It's not going to be easy, but we have to do it.

The new prototype v0.2 of Gamegirl should be ready soon. New contributors are taking active an part in the project, for the best.

Thank you for reading, and for all the nice comments you sent us. Happy gaming!
