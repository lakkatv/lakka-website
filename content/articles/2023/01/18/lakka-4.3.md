---
title: Lakka 4.3 release
created_at: '2023-01-17 10:00:00'
author_name: vudiq
kind: article
tags:
 - Release
social:
  thumbnail: media/thumb.png
---

![Thumbnail](media/thumb.png)
_Thumbnail by [jdalmanza](https://www.instagram.com/jdalmanza/)_


New version of Lakka has been released!

We are happy to announce the new and updated version of Lakka.


# Release summary

Changes since version 4.2:

- RetroArch updated to [1.14.0](https://www.libretro.com/index.php/retroarch-1-14-0-release/)
- Cores updated to their most recent versions
  - `fake-08`: added new libretro core (Pico-8)
  - `mojozork`: added new libretro core (Z-Machine)
  - `puae2021`: added new libretro core (Amiga, less demanding version of the core)
- Mesa updated to [22.1.7](https://docs.mesa3d.org/relnotes/22.1.7.html)
- Added image for Orange Pi 4 LTS (Rockchip RK3399)
- Added support for more Nintendo Switch variants (Hekate 5.0.1+ is required, on Nintento Switch Lite use touchscreen to change the default input device: Settings &rarr; Input &rarr; Port 1 Controls &rarr; Device Index &rarr; top most item)
- Updated Linux kernel
  - mainline: 5.10.123
  - raspberry: 5.10.110
  - amlogic: 5.11.22

[Full changelog](<%= config[:links][:github] %>/compare/v4.2...v4.3)


# Known issues

See [GitHub](<%= config[:links][:github] %>/issues) for information about currently open bugs and issues and also for possible workarounds for these bugs/issues.


# Final notes

You can download the latest release from [Lakka download page](/get/). If you want to follow the development of Lakka more closely, you can download [latest Lakka nightly builds](<%= @config[:devel][:'all-latest'] %>).

If you want to show your support for further development of the Libretro projects and ecosystem, you can learn more [here](https://retroarch.com/index.php?page=donate).

Happy retro-gaming!
