---
title: Lakka team update
created_at: '2019-08-22 15:40:00'
author_name: natinusala
kind: article
tags:
  - team
social:
  thumbnail: media/team.jpg
---

Six years ago, Jean-André Santoni alias kivutar started to work on a small retrogaming distribution for the Raspberry Pi: Lakka. The idea behind the project was to use RetroArch as the only user interface, and have the different emulators integrated seamlessly thanks to the libretro frontend / cores design. For that, he developed a whole new menu for RetroArch - the goal was to have something fancy that can entirely be controlled with a joypad, like any other gaming console. This menu later became iconic to Lakka as more and more features were added.

Now, Lakka supports 114 emulators, game engines and standalone games on more than 30 different platforms, ranging from the low cost Raspberry Pi to the more expensive Rockchip-based boards. The very large libretro database has bindings for 657 controllers, and thumbnails for countless retro games. Even your old laptop can stop taking the dust and be reused to play your favorite games out of the box!

Sadly, kivutar doesn't have as much time to dedicate to Lakka as he used to; this is why the project has been stalling for multiple months now. As a result, he has decided to step out of the team and focus on himself and his family.

The new project leader is natinusala - he joined the team after releasing an unofficial Nintendo Switch port of the distribution, a year and a half ago. We are now five working on Lakka :

- RobLoach (Rob Loach)
- natinusala
- Ntemis (Demetris Ierokipides)
- gouchi
- ToKe79 (Tomáš Kelemen)

As for Lakka itself, we are currently working on Lakka 3.0 - starting from scratch, this new version will feature an updated operating system (updated kernel and software, more drivers...) with even more supported platforms. The current version of Lakka, 2.0, will shortly receive one last update to add Raspberry Pi 4 support (currently only in nightlies), update RetroArch (adding a lot of new features!) and update the cores (PS2 anyone?).

The whole Lakka and libretro team whish all the best to kivutar, and good luck for his future projects! If you like Lakka and RetroArch, be sure to check out [ludo](https://ludo.libretro.com/), a lightweight libretro frontend written in golang.
