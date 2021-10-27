---
title: Lakka 3.1 release
created_at: '2021-06-05 10:00:00'
author_name: vudiq
kind: article
tags:
 - Release
social:
  thumbnail: media/thumb.png
---

![Thumbnail](media/thumb.png)

Hello friends, fans and followers!

Following the release schedule of RetroArch we bring you updated version of Lakka, so you don't stay behind.

As usual the release includes the latest RetroArch version at the time, which is currently 1.9.4, as well as updates to all the supported cores to the most recent versions. You can update your existing 3.0 installation using the built-in updater (except on Nintendo Switch; you have to update manually, but gavin_darkglider is working hard to implement updates for Lakka on your console). If you are using older (2.3.x) release, clean installation is recommended.

Noteworthy changes since version 3.0:

- RetroArch updated to 1.9.4
  - Prevent unnecessary extraction to disk of compressed content files
  - Brightness restoration
  - Updated translations from Crowdin
- Cores updated to their most recent versions
- Added battery stats in RetroArch (for devices that have sysfs node for system battery)
- Fixed safe shutdown on GPICase
- Fixed audio issues on Raspberry Pi 4
- Fixed FMV issues with PPSSPP core
- Fixed backlight brightness
- Odroid XU3/4 port is now fully functional and will be optimized in future releases
- Mesa updated to 21.1.1
- VULKAN enabled in Dolphin and PPSSPP (Raspberry Pi 4, Generic 64 bit, Nintendo Switch)
- Improvements to the Nintendo Switch port
  - Fixed Vulkan renderer
  - Fixed Joycon mappings
  - Fixed mounts
  - Added dock support (note: the kernel will crash/lock-up if the console is put into sleep before placed into dock)
- Added some cores that were not included in previous version
  - beetle-saturn
  - bsnes2014
  - snes9x2002
  - snes9x2005
  - snes9x2005_plus

You can download the latest release from [Lakka download page](/get/). If you want to follow the development of Lakka more closely, you can download [latest Lakka nightly builds](<%= @config[:devel][:'all-latest'] %>).

Many thanks to all the contributors, as well as to the whole community for your long-lasting support. We are grateful to all testers of the nighly builds for finding bugs and testing our attempts to fix them. We would not be able to support so many devices if there wasn't you. Your feedback is always appreciated.

If you want to show your support for further development of the Libretro projects and ecosystem, you can learn more [here](https://retroarch.com/index.php?page=donate).

Happy retro-gaming!
