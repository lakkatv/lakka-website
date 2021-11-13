---
title: Lakka 3.6 release
created_at: '2021-11-14 10:00:00'
author_name: vudiq
kind: article
tags:
 - Release
social:
  thumbnail: media/thumb.png
---

![Thumbnail](media/thumb.png)

New version of Lakka has been released!

We are happy to announce the new and updated version of Lakka.


# Release summary

Changes since version 3.5.2:

- RetroArch updated to [1.9.13.2](https://www.libretro.com/index.php/retroarch-1-9-13-release/)
  - Option to control the menu by all users is back
  - New option for [automatic frame delay](https://www.libretro.com/index.php/retroarch-1-9-13-automatic-frame-delay/) (accessible via Settings &rarr; Latency, and also via Quick Menu; Advanced Settings must be enabled to access this option)
- Cores updated to their most recent versions
  - `beetle-fce`: added new libretro core (exists besides `beetle-fce-fast`)
  - `ecwolf`: added new libretro core
  - `fbneo`: added `highscore.dat` to RetroArch `system` folder
  - `mame2003-plus`: added artwork, `cheat.dat` and `history.dat` to RetroArch `system` folder
  - `scummvm`: added engine files, themes, soundfont and basic `scummvm.ini` file to RetroArch `system` folder, 
- Mesa updated to [21.2.5](https://docs.mesa3d.org/relnotes/21.2.5.html)
- Mainline kernel updated to 5.10.78
- Raspberry kernel/firmware updated to 1.20211029
- Fixed issue with older Intel GPUs (`crocus` driver is now preferred and using `MESA_LOADER_DRIVER_OVERRIDE` is not required anymore)


# Known issues

See [GitHub](<%= config[:links][:github] %>/issues) for information about currently open bugs and issues and also for possible workarounds for these bugs/issues.


# Final notes

You can download the latest release from [Lakka download page](/get/). If you want to follow the development of Lakka more closely, you can download [latest Lakka nightly builds](<%= @config[:devel][:'all-latest'] %>).

If you want to show your support for further development of the Libretro projects and ecosystem, you can learn more [here](https://retroarch.com/index.php?page=donate).

Happy retro-gaming!
