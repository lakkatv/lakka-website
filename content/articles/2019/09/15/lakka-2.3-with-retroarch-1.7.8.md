---
title: Lakka 2.3 with RetroArch 1.7.8
created_at: '2019-09-14 19:00:00'
author_name: natinusala
kind: article
tags:
  - RaspberryPi
  - RaspberryPi4
  - Release
  - ROCKPro64
  - DiscProject
  - Mupen64Plus-Next
  - Bsnes HD
  - Flycast
  - AIProject
social:
  thumbnail: media/lakka.jpg
---

After almost a year of hiatus, the team is proud to release Lakka 2.3, featuring new platforms, new cores, and of course RetroArch 1.7.8.

As always, you can update through the Online Updater, or by visiting the download page of your platform here on the website.

# New platform: Raspberry Pi 4

![RPi4](media/rpi4.jpg)

The Raspberry Pi 4 is the new SbC of the Raspberry Foundation. Following the same line as its predecessors, the Raspberry Pi 4 is a cheap yet powerful board - with an improved CPU and GPU as well as more RAM, it will run most cores without any trouble.

Lakka 2.3 is officially compatible with the Raspberry Pi 4, using both NOOBS and the regular image to be flashed manually. You can find the link to the Raspberry Pi 4 version of Lakka in the regular downloads page of the website, or download it directly from your Raspberry Pi using NOOBS as usual.

Be sure to buy and apply a heatsink and upgrade the firmware before installing Lakka on your unit, as the Raspberry Pi 4 is known to heat up quite a lot.

# New RPi accessory: GPICase

![GPICase](media/gpi.png)

If you follow the Raspberry Pi retrogaming news, you have certainly heard of the [Retroflag GPI Case](https://retroflag.com/GPi-CASE.html). As you can see on the picture, the GPI Case is a Gameboy inspired case for the Raspberry Pi Zero and Zero W.

The case has an integrated IPS display, jack audio port and most importantly, 12 buttons: a DPAD, A/B/Y/X, L/R and START/SELECT. The power button and LED indicator allow you to safely turn on and shutdown your system.

We now provide a special image of Lakka (starting from version 2.3) made for the GPI Case - input mapping and safe shutdown are automatically taken care of. You can find the image in the website (select "GPI Case" as your platform). Special thanks to Albert Malina for taking care of the port!

Please note that the regular Raspberry Pi image is not compatible with the GPI Case.

# New platform: ROCKPro64

![ROCKPro64](media/rockpro64.png)

Based on the RK3399 SoC by Rockchip, the ROCKPro64 is a larger and more powerful board than your typical Raspberry Pi, while still keeping the same form factor (no fan, no heavy case).

Brought to us by Pine64 (the creator of the ROCK64), this board contains two ARM CPUs, a dual-core Cortex A72 and a quad-core Cortex A53, as well as a quad-core Mali T-860 GPU. Two versions of the ROCKPro64 exist, the 2GB RAM one and the 4GB RAM one.

Keeping a reasonable price and dimensions, the ROCKPro64 can run all 3D cores without flinching - the 2GHz CPU is not afraid of running N64 and PSP cores at fullspeed... and even Dreamcast.

The ROCKPro64 version of Lakka isn't new, but this is the first stable release since the port has been done. You can find the image on the website as usual. Please note that booting off the eMMC isn't supported at the moment, so please use an SD Card.

# Real-time game translation

![AIProject](media/ai.png)

One of the flagship features of RetroArch 1.7.8 is the AI Project. This unique and never-seen before feature allows you to translate your games on the fly, in real-time as you play.

Once setup on your Lakka box, you will be able to press the AI hotkey to have the system scan the screen for any foreign language text. Once recognized, the text is translated and restitued back to you depending on the current mode:

- Speech mode: the translated text is read back to you using text to speech. As the game isn't interrupted in this mode, that allows you to have the game dialogues read to you in your language as if someone was sitting next to you, translating the game in real time.
- Image mode (on the picture): the original text is replaced by the translated text onscreen, while the game is paused to give you time to read.

You can enable and setup the AI Project on your Lakka 2.3 box by following the instructions on [this article](https://www.libretro.com/index.php/retroarch-1-7-8-ai-service-how-to-set-it-up/). Please use the "ZTranslate Service API Option" method, as Lakka doesn't currently have the prerequisites to use the "VGTranslate" method. We hope to provide a streamlined AI Project experience in future Lakka versions.

# Play and dump your game discs

![AIProject](media/disc.png)

The other flagship feature of RetroArch 1.7.8 is the Disc Project. Currently in alpha stage, the Disc Project allows you to play and dump your physical game discs, directly from your Lakka box. You can use both integrated and USB CD drives, for computers and all boards supported by Lakka 2.3.

Please note that, for now, only the following cores are compatible with the disc features:

- Beetle PSX (HW and non-HW)
- Beetle Saturn
- Genesis Plus GX
- 4DO

Please note that you may not have all those cores on your Lakka box depending on the platform.

You can find instructions on how to use the Disc Project features in [this article](https://www.libretro.com/index.php/retroarch-disc-project-alpha-testing-has-begun-details-inside/). You just need to be careful to load the core manually first, then go to Load Disc or Dump Disc to either play your physical game directly or dump it in the BIN/CUE format to enjoy later.

# RetroArch 1.7.8

![AIProject](media/ra.jpg)

RetroArch has been updated from 1.7.6 to 1.7.8v4. The major changes are already listed in this article, but you can find the whole changelogs on the [libretro website](https://www.libretro.com/) ([1.7.7](https://www.libretro.com/index.php/retroarch-1-7-7-released/), [1.7.8](https://www.libretro.com/index.php/retroarch-1-7-8-released/), [1.7.8v2](https://www.libretro.com/index.php/retroarch-1-7-8-v2-released/), [1.7.8v3](https://www.libretro.com/index.php/retroarch-1-7-8-v3-released-big-core-updates/), [1.7.8v4](https://www.libretro.com/index.php/retroarch-v1-7-8-v4-released/)).

## Playlist thumbnails updater

Many users found downloading the thumbnail packs to be impractical and troublesome on low end hardware. If you had issues with them in the past then fear no more, as RetroArch 1.7.8 brings a brand new playlist thumbnails updater!

To use this new system, open the Online Updater and go to Playlist Thumbnails Updater. Then, select one of your playlists to have all the thumbnails of that playlist downloaded, and only them. No more endless downloads!

You can additionally enable on-demand thumbnails downloading to have RetroArch automatically download the thumbnail of a game when you hover it in the menu, in the background.

## XMB menu improvements

As with every update, the XMB menu has been improved and polished. We'd like to thank jdgleaver for his hard work on the different RetroArch menus, including XMB which has become the signature menu of both Lakka and RetroArch.

- Each menu entry now has an unique icon
- Thumbnails are now displayed in the History tab
- Large sublabels now scroll smoothly instead of clipping on the next menu entry
- Ellipsis tickers are now smooth
- Thumbnails scaling has been improved
- Menu rendering is now framerate independent - animations are now smoother on 120FPS configurations

## Improved onscreen notifications

By using Lakka 2.3 you will notice that the bottom-left yellow notifications are gone. Instead, they are replaced by fancy stacked and animated notifications, allowing you to track multiple downloads simultaneously.

In fact, a whole set of new and fancy onscreen notifications, indicators, widgets and overlays were added to make use of all your screen:

- Tasks progress (downloads, input mapping...)
- Notifications
- FPS counter and frame counter
- Status indicators (pause, rewind, fast forward, slow motion...)
- Achievements
- Screenshots
- Volume
- Core-specific messages

# Core updates

![Mupen64Plus-Next](media/mupen.png)

Lakka 2.3 has a significant amount of new cores and core updates. Please note that you may want to reset your playlists and/or RetroArch configuration to use the new cores as some were entirely replaced in the update.

## Mupen64Plus-Next

The ParaLLEl-N64 and Mupen64Plus cores were replaced by a new core: Mupen64Plus-Next (on compatible platforms).

This updated version of Mupen64Plus has been rewritten from scratch, using the latest version of the GLideN64 video plugin. This results in better performances, greater games compatibility and updated features such as HD textures and additional core options.

Please note that the old cores are still present in the system, but should not be used anymore. They will be removed in a future Lakka release.

## Flycast

Flycast is a new and improved version of the Reicast Dreamcast emulator. Compatible with WinCE games with a performance increase up to 30% on both regular and WinCE titles, this libretro-exclusive core is the future of Dreamcast emulation.

As a result, Reicast has been replaced by Flycast in Lakka 2.3.

## Bsnes HD

Bsnes HD is an updated and significantly faster variant of the regular bsnes core you already know. The major feature of this new core is [HD Mode 7](https://www.youtube.com/watch?v=xcirI5fySok), allowing you to increase the resolution of "Mode 7" textures in various SNES games.

Please note that the name "Bsnes HD" is temporary and will likely change in the future.

## Final Burn Neo

In a similar way to Flycast and Reciast, Final Burn Neo is the new and improved version of the Final Burn Alpha core, which has been removed from Lakka 2.3 (except on Raspberry Pi 0 and 1).

[Here](https://github.com/libretro/FBNeo/tree/a28d26f0418c7eb9771c1f026cfe1a6c141d2eb3/dats) are the DAT files used in the Final Burn Neo version used in Lakka 2.3.

# Full changelog

![Changelog](media/changelog.png)

As usual all cores, databases, controller mappings and assets have been updated.

- RetroArch 1.7.8 (full RetroArch changelog can be found [here](https://retroarch.com/?page=changelog))
  - Playlist-based thumbnail downloader, on-demand thumbnail downloads
  - AI Project (Real-time games translation)
  - Disc Project
  - XMB Improvements
  - Improved onscreen notifications
  - Shader Usability Changes
  - Added an easter egg
- New platforms and accessories
  - New platform: Raspberry Pi 4
  - New Raspberry Pi accessory: GPICase
  - New Raspberry Pi accessory: Game HAT
    - The Game HAT driver can be enabled manually from any existing Raspberry Pi Lakka installation by following the instructions [here](<%= config[:links][:github] %>/blob/master/packages/linux-drivers/game-hat/README.md)
  - New platform: ROCKPro64
  - New plaform: Vulkan-only Nvidia computers
    - This variant of the Generic platform only supports Vulkan on computers with Nvidia-powered GPUs. While it runs some cores better (such as Dolphin), it also has a lot of incompatibles, removed cores
    - You can find a link to the Vulkan-only Nvidia image on the 64-bit Generic download page of the website
    - Thanks to Albert Malina for the port!
- New cores (please note that not all cores are available on all platforms)
  - Play!
    - This new PS2 emulator is very experimental and doesn't run all games, don't expect it to run properly on your Lakka box yet
    - You can find a list of all playable games on the Play-Compatibility repository [here](https://github.com/jpd002/Play-Compatibility/issues?q=is%3Aissue+is%3Aopen+label%3Astate-playable)
  - Final Burn Neo
    - [Here](https://github.com/libretro/FBNeo/tree/a28d26f0418c7eb9771c1f026cfe1a6c141d2eb3/dats) are the DAT files used in the Final Burn Neo version used in Lakka 2.3
  - OpenLara
    - The core has been added to all platforms
  - Mupen64Plus-Next
  - Bsnes HD
  - Flycast
  - Yaba Sanshiro
  - Kronos
  - mame2010
  - TIC-80
  - Theodore
  - mesen-s
  - Gearsystem
  - Daphne
- Cores changes
  - Reicast is now Flycast
  - Final Burn Alpha is now Final Burn Neo
  - stella is now stella2014
- Miscellaneous
  - PPSSPP assets are now included in the system
    - Please reset your RetroArch config for this change to take effect
  - New glcore video driver with slang shaders support
  - Menu rendering is now framerate independent - animations are now smoother on 120FPS configurations
- Bug fixes
  - Shutting down no longer hangs the system
  - Overlay directory in storage partition now works properly

# Lakka 2.3.1 changes
- Fixed Bsnes HD on ARM platforms
- Fixed RPi4 Online Updater
- Renamed NOOBS OS from "Lakka" to "Lakka_RPi*"
