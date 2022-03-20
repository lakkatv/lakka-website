---
title: Lakka 4.0 release
created_at: '2022-03-19 10:00:00'
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

Changes since version 3.7:

- Build system based on LibreELEC 10.0.2
- RetroArch updated to [1.10.1](https://www.libretro.com/index.php/retroarch-1-10-1-release/)
- Cores updated to their most recent versions
  - `superbroswar`: added new libretro core
  - `sameduck`: added new libretro core
- Mesa updated to [22.0.0](https://docs.mesa3d.org/relnotes/22.0.0.html)
- Mainline kernel updated to 5.10.103 (PC, Amlogic, Allwinner, NXP)
- Raspberry kernel updated to 5.10.95
- Most arm devices switched to aarch64
- Rockchip RK3288, RK3328 and RK3399 switched to mainline kernel 5.10.76
- Added support for additional Allwinner and Amlogic devices (not tested on our side, as we do not own many of these devices)
- Nintendo Switch: complete rewrite of the port with many fixes and enhancements
- Tinkerboard and MiQi now use common system RK3288 (hence the change of the image names); you need to place empty file named `.nocompat` in the `/storage/.update` folder / `Update` Samba share
- Dropped support for RPi4.arm

This is our first release with the updated build system. We tried to port all our changes to this new build system, but we might have missed some of our optimizations and enhancements. Please report us any regression or missing features or drivers via our [issue tracker](<%= config[:links][:github] %>/issues).

Not all platforms have been ported to the new build system yet. For these platforms we have released a maintenance update (3.7.1) with RetroArch and libretro cores updated to the same versions as in 4.0 release. Lakka users with Hardkernel's Odroid XU3/4, Odroid Go Advance / Super, and Anbernic's RG351M / RG351P / RG351MP / RG351V devices get update as well.


# Known issues

See [GitHub](<%= config[:links][:github] %>/issues) for information about currently open bugs and issues and also for possible workarounds for these bugs/issues.


# Final notes

You can download the latest release from [Lakka download page](/get/). If you want to follow the development of Lakka more closely, you can download [latest Lakka nightly builds](<%= @config[:devel][:'all-latest'] %>).

If you want to show your support for further development of the Libretro projects and ecosystem, you can learn more [here](https://retroarch.com/index.php?page=donate).

Happy retro-gaming!
