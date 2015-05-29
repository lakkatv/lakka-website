---
title: New release, official WeTek support, and more
created_at: '2015-05-29 23:29:39'
author_name: kivutar
kind: article
tags:
  - WeTek Play
  - Release
  - ATI
  - KADE
  - Cubieboard
  - MALI
---

# New release

We are releasing a new stable version of Lakka.

The ATI bug is finally fixed. We had to add back x11 in the generic builds to work around this bug preventing to launch games on ATI cards. This change will have some side effects. The performance of GL cores like PPSSPP will improve on NVidia cards, since x11 allow to use the proprietary driver instead of nouveau. However, x11 add some overhead, and you can expect a performance drop globally.

In this release, a lot of packages have been updated, including RetroArch and some libretro cores like FBA, PPSSPP, and more. We didn't merge OpenELEC yet, since we don't want to lose i386 and BIOS support now.

The Odroid-C1 build has been upgraded to use MALI r5p0 for better performance : FF3 on PPSSPP now runs at full speed without frameskipping. The vsync issue is partially fixed: the game objects are blinking correctly now, but there is still tearing. I saw that they implemented waitforvsync in their kernel, we still need to call this on the RetroArch side to fix the problem.

The Odroid-XU3 port is still too unstable now to be released. We gave a try to the r5p0 blobs on the XU3 without success for now.

This new release is using the XMB menu. The database and scanning is not present yet in the RetroArch that we ship. It is a choice. We will include this new feature in the next release if possible, since it still needs maturation before being usable and integrated well.

# Some hardware donation

## WeTek Play official support

For a few months now, we've been providing some development builds for the [WeTek Play](https://wetek.com/product/wetek-play). A contributor named **snifferdsx** contacted the **WeTek team** and asked for a free sample. We received it yesterday and the port works well. We can now support officially this nice box. Thanks a lot to snifferdsx and the folks at WeTek for this donation!

![WeTek Play](media/wetekplay.jpg)

## Cubieboard 1

**Kozimodo**, a generous contributor on the libretro forums is sending us a free [Cubieboard](http://cubieboard.org/model/cb1/). We will receive it by the end of June and port Lakka to it.

I took a look at the specs, and the port should be feasible. Thanks again!

![Cubieboard](media/cubieboard.jpg)

## KADE miniConsole+

**Bootsector** from the **KADE** team contacted us to talk about the compatibility of their [miniConsole+](https://www.kickstarter.com/projects/kadevice/kade-miniconsole-a-smart-open-source-retro-gaming) in Lakka. Their project is very interesting. It will allow you to use all your good old pads on most modern platforms.

They are going to send us a free prototype. We will do our best to support it in Lakka. Many thanks to them!

![miniConsole+](media/kade.png)

Happy gaming!

