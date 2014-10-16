---
title: Why the release is taking so long?
created_at: '2014-10-16 13:44:25'
author_name: kivutar
kind: article
tags:
  - Cuboxi
  - HummingBoard
  - Port
  - RetroBox
  - Contributions
  - Cubieboard2
  - Cubietruck
  - BananaPi
social:
  thumbnail: media/lakkasettings.png
---

Dear Lakka users, it's been a long time since we've not posted something on this development blog. The reason is that we are very busy at work. We were planning a release for the fall, but things are taking a little more time. So here are some news from the dev front!

## Rewrite of the menu from scratch

Our GUI, called lakka-menu, has been improved a lot, most of the settings have been implemented, it's able to launch roms, save and load state, take screenshots, reset a game, and more important, it is now thread safe (thanks aliaspider from RetroArch) so threaded video can be used which leads to significant performance improvements.

![Lakka settings interface](media/lakkasettings.png)

However, this codebase is becoming very difficult to maintain, because it does not use the central concept of RetroArch menus : the file_list type. RetroArch developpers asked us to do something about it, so I started rewriting lakka-menu from scratch, based on the RGUI common backend. This new menu required a lot of changes to be made in the common backend. The development takes time again, however it is for the best, since this is a lot much cleaner basis: for instance, settings are already fully implemented, which was almost impossible to achieve with lakka-menu approach, because of infinite depth of the file explorer.

![XMB File browser](media/xmb.png)

Here is how this new implementation looks like for now, the horizontal icons are not yet implemented, same for the horizontal animations, and the top level menu is still displayed in place of settings. But don't be scared, in the end this menu will look exactly like lakka-menu. It will be undistinguishable.

## Cubox-i/Hummingboard port

![Hummingboard](media/hummingboard.jpg)

The port to [SolidRun](http://www.solid-run.com) devboards is coming nicely. We ported RetroArch to these devices, which required the developement of a [Vivante fbdev context driver](https://github.com/libretro/RetroArch/blob/master/gfx/context/vivante_fbdev_ctx.c). In fact it was pretty easy, since maister already did a mali context driver, I just had to adapt his code and everything is working like a charm, good performances, no glitches, etc.

The pcsx_rearmed core can run at full speed on my hummingboard-i2ex, with threaded video enabled. The snes9x-next core is also running at full speed. It's a good thing because it has a lot more features compared to the pocketsnes core that we package in the Raspberry Pi version. However, the mupen64plus core is still slow and we have cross compiling issues with the latest versions.

## An annoying bug

RetroArch is under very intense development these days. Their team is working very hard to make it working well on so much supported platforms. Some large parts of RetroArch like inputs, settings, and menus, are being cleaned a lot. In this process, some bug regressions can appears.

Starting from a recent version of RetroArch, the inputs in pcsx_rearmed went broken. This is a very difficult bug to fix, because it happens only when cross compiling RetroArch... This is the main reason of why we've not released an intermediate version of our Lakka OS. We prefer to provide the latest working nightly build, since a lot of our users want to be able to play their favorite PSX games.

RetroArch team is well aware of this bug, and will help us to find a fix, however it is very low priority for them, since it affects only us.

## Increasing joypad support

Since we are collaborating more with the [libretro organisation](https://github.com/libretro), we moved our [github repo](https://github.com/libretro/retroarch-joypad-autoconfig) containing the joypad configurations to their github group. People around the world then started contributing their configs, so the next release of Lakka will support a lot more joypads.

RetroArch use to choose which config file to use for inputs by matching the joypad name. It was problematic, since some joypads like wireless dualshock 3, and duarlshock 4 have the same name... Using vendor_id/product_id is a better idea, and this is being implemented right now in the differents inputs drivers in RetroArch.

The next release of Lakka should include this new way of matching joypads, so all dualshok pads will be supported, wired or wireless.

## Cubieboard/Cubietruck and BananaPi ports

![BananaPi](media/bananapi.jpg)

We've spend a lot of time working on these ports, and got a big help from a contributor called Alex Recio who did the [BananaPi](http://www.bananapi.org) port and activated neon optimisation, allowing pcsx_rearmed to run at full speed on these devices.

So pcsx is working, snes9x-next is full speed on almost all roms... these devices are cheap... so far so good. Except that the software support of linux for these Allwinner devices sucks. We are stuck with old 3.4 kernels, and [systemd just droped support for pre 3.7 kernels](https://www.mail-archive.com/systemd-devel@lists.freedesktop.org/msg22454.html), thanks a lot systemd, very best way to fix a bug ever. So wifi is no more working, and it's only a start. We may not be able to maintain this port if systemd go on breaking things without caring in the future.

## RetroBox

If you're a follower of #retroarch on freenode, you may have noticed that RetroArch devs are sometime speaking about [RetroBox](http://www.libretro.com/index.php/after-retroarch-v1-1-retrobox/). Some people have been sending us emails to know what the future of Lakka will be, is Lakka going to become RetroBox, etc.

It is too early to ask this kind of questions. RetroBox is still a young idea. We've not spoken in detail with Squarepusher, the developer of RetroArch, about it. He is busy with getting the next release of RetroArch. So are we with Lakka. We will discuss after RetroArch 1.1 release, when our minds are free of all this tedious releasing work.

Lakka is more than ever under active development. We are focused on implementing features, fixing bugs, and releasing. First things first.

## Contributing

If you love Lakka and want to help us, please join our IRC chan, #lakkatv on freenode.

We need some people with very solid knowledge of C and cross compilation, to fix the pcsx input bug and package the latest version of mupen64plus. And we need somebody to maintain a systemd patch for linux sunxi 3.4 kernel.
