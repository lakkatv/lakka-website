---
title: Lakka 3.0 release
created_at: '2021-05-22 10:00:00'
author_name: vudiq
kind: article
tags:
 - Release
social:
  thumbnail: media/thumb.png
---

![Thumbnail](media/thumb.png)

Dear friends!

It has been over a year since our latest release, therefore there are many changes in this update. During this time we were working hard to bring you the new and updated Lakka. Thanks to our nightly build infrastructure many of you helped us test this release and gave us precious feedback.

As usual the release includes the latest RetroArch version at the time, which is currently 1.9.3, as well as updates to all the supported cores to the most recent versions, even some new cores were added. This time we recommend doing a clean install to avoid any incompatibility issues, as significant changes to the underlaying operating system and RetroArch were made. The size of the boot partition was increased to 2 GB, which is not compatible with previous installations.

Highlights of this release include:

- Operating system based on LibreELEC 9.2 build system
- Vulkan API enabled for AMD and Intel GPUs (Generic) and for Raspberry Pi 4
- Support for joycons
- RetroArch updated to 1.9.3
  - Screensaver (Settings -> User Interface)
  - Set time zone directly in RetroArch (Settings -> Services)
  - Menu for pairing bluetooth devices
  - Better searching in playlists (search term now filters the entries instead of jumping to first match)
  - Option to automatically enable 'game focus' mode when running/resuming content
  - Explore - search for content accross all your playlists based on various criteria, such as developer, publisher, genre, system, year, ...
  - Content loading animations
  - Easy dropdown lists for input remapping
  - Many menu and widget improvements
  - Fixed Wi-Fi menu (displays access points with longer names correctly)
  - Performance menu to adjust CPU governor
- Cores updated to their most recent versions
- Support for new devices/architecture:
  - 64 bit images for Raspberry Pi 4 (no 32 bit release)
  - Odroid Go Advance / Anbernic RG351P/M and V / Gameforce Chi
  - Nintendo Switch ([instructions](/doc/nintendo-switch/))
  - iMX6 with mainline kernel and MESA
- New libretro cores:
  - Genesis Plus-GX Wide (widescreen enabled core for SEGA Genesis / MegaDrive)
  - Stella (port of upstream Atari 2600 VCS emulator)
  - Supafaust (SNES emulator optimized for multicore ARM platforms)
  - Swanstation (a.k.a. Duckstation, PSX emulator)
  - LowRes NX (Retrogame console that can be programmed in BASIC)
  - Mu (PalmOS emulator)
  - Opera (Fork of 4DO/FreeDO emulator)


In the near future we will try to polish this release and squash any bugs that will be found and reported. As part of the new release strategy of the libretro organisation we will push new versions of Lakka with updated cores and RetroArch more often than in the past, hopefully twice a month. Our goal is to use 64 bit (aarch64) where possible and we aim to bring 64 bit release for Raspberry Pi 3 in upcoming versions.

We are also preparing for next major release, which will be based on LibreELEC 10. As with this release, support for some devices might be dropped, but we will do our best to keep support for as many devices as possible and managable.

We thank all contributors, who made this release possible, notably to Natinusala, Demetris and davidgf for the Odroid Go Advance ports, and shoutout to Team LibreELEC for their work as well. Special thanks goes to the Switchroot Team - CTCaer, Azkali, Natinusala, M4XW, Plaidman and gavin_darkglider to name a few - for the port to Nintendo Switch.

You are welcome to join our [Discord server](https://discordapp.com/invite/27Xxm2h) (`#lakkatv` channel) to contribute to the project, report your findings, ask for support or just hang out with retrogaming and DIY enthusiasts around the globe!
