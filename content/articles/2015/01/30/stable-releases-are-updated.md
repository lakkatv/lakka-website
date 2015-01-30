---
title: Stable releases are updated
created_at: '2015-01-30 18:28:08'
author_name: kivutar
kind: article
tags:
  - Release
  - RetroBox
  - XMB
  - Odroid-c1
  - libretro
  - RetroArch
---

## Partial release

We've not released a new version of Lakka for more than 6 month now. So the lastest stable version was starting to show its age: no graphical menu, no RPi B+ support, etc. As the userbase is increasing, the new users started using our nightly builds more and more, and the release got completely abandonned.

That's why we decided to release Lakka today. Even if we're not yet satisfied with the current result - the menu is not as fast and not as configurable as we wish - it is still far better than this old release of may 2014.

So, I updated the website with the new links for RPi, Generic and Hummingboard/Cubox-i, and also added experimental support for Banana Pi, Cubieboard 2 and Cubietruck. We've been testing Lakka on a daily basis for all these platforms, and got comments from users on IRC, it's pretty stable. You can browse the menu, play your games, as expected. There are still some rough edges of course. Like, not all of the settings are accessible, some common joypads are still unsupported, the rom filtering is still wrong, and some cores don't work as expected. If you want to declare a new bug, please check that it is not a known bug before posting.

## Future developments

Now let's talk about the next developments in Lakka.

### XMB in RetroArch

Our current menu code (lakka.c in RetroArch) is going to be replaced by xmb.c. This XMB menu driver had been in development for months, it's becoming to be usable and will bring the following improvements:

 * All the settings will work, even the file browsing
 * Easier maintainance
 * Good system separation, no more roms listed under the wrong core
 * Faster browsing of large rom collections
 * Zipped rom support
 * Configurable : you can hide cores, merge lists, change the background image, etc.

You can expect XMB to be stable in the next two month.

### Odroid-c1

We got the nice Odroid-c1. It's our new toy and we are actively porting Lakka on it. We hope to release it soon. For now we're stuck on some u-boot packaging bugs. Floreal is taking care of it. If you want to help us, join #lakkatv on freenode.

## The future of Lakka

It's not a secret that we're getting closer to the libretro/RetroArch development team. Lakka can be resumed as RetroArch on OpenELEC with a nice theme, and all our code is mainstreamed in RetroArch as soon as possible. Their team had exprimed the wish to develop a distro for their technologies, so it was a natural decision that Lakka will become this distro.

For now, it changes nothing for the end user. Except the promise that our future will be bright. The libretro team is full of skilled people that will help us to make Lakka better, cleaner, more optimised. We feel proud to get their official recognition for the work we've been doing so far on Lakka.

Twinaphex, the leader of libretro wants to promote the libretro API on a larger scale. This API is the language between the cores (your emulators) and the frontend (in our case, RetroArch). But it can be used to develop far more various things than just emulators. Some game engines have been ported, and some standalone games use it. It's the cleanest way to dev a portable application. By portable, I mean that it will work with a single code base on all the platforms supported by RetroArch: PSP, Xbox, PS3, Android, iOS, Mac OS, windows, Linux, etc.

So if you're a game developper and want to target all those platform at once for your game, get in touch with us on #retroarch on freenode. 
