---
title: Lakka 4.2 release
created_at: '2022-04-27 21:45:00'
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

Changes since version 4.1:

- RetroArch updated to [1.10.3](https://www.libretro.com/index.php/retroarch-1-10-3-release/)
- Cores updated to their most recent versions
  - `a5200`: added new libretro core
  - `race`: fixed savestates on arm platforms
- Mesa updated to [22.0.2](https://docs.mesa3d.org/relnotes/22.0.2.html)
- Amlogic: disable composite output on generic TV boxes by default
- Generic: fix/add back support for [Ventoy](https://www.ventoy.net)


# Known issues

See [GitHub](<%= config[:links][:github] %>/issues) for information about currently open bugs and issues and also for possible workarounds for these bugs/issues.


# Final notes

You can download the latest release from [Lakka download page](/get/). If you want to follow the development of Lakka more closely, you can download [latest Lakka nightly builds](<%= @config[:devel][:'all-latest'] %>).

If you want to show your support for further development of the Libretro projects and ecosystem, you can learn more [here](https://retroarch.com/index.php?page=donate).

Happy retro-gaming!
