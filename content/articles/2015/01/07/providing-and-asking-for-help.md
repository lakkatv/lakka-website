---
title: Providing and asking for help
created_at: '2015-01-07 00:03:51'
author_name: kivutar, floreal
kind: article
tags:
  - Help
social:
  thumbnail: media/help.jpg
---

Hello everyone! Here is the first article in 2015. I've been wanting to write about this 
subject for a little while, it is about help. When you ask for help on one hand and when you
want provide help on another.

## Getting Help

First of all, know that we like to help people because we want Lakka to be spread
around the world. We want it to be as easy to use as possible, meaning the
least amount of problems possible for the end user.

You have several ways to get help:

 * Reading the [FAQ](/doc/FAQ)
 * Reading the [documentation](/doc/Home)
 * Using social networks ([twitter](https://twitter.com/lakkatv), [facebook](https://www.facebook.com/lakkatv), [G+](https://plus.google.com/+LakkaTv/posts), [diaspora / framasphère](https://framasphere.org/people/a7eb87705944013249142a0000053625))
 * Using the [contact form](/contact)
 * Using [IRC](irc://irc.freenode.org/#lakkatv)

For IRC, please keep in mind that most of our developers live in Western Europe time zone.
You also need to know that we are always online, but we might be AFK when  
you message us. We will see your message, and we will answer with as little a delay.
Please don't logout before getting a reply. This is quite frustrating, so if
you can't stay online on IRC, please send us an e-mail, and quote yourself in
it. We don't like believing we couldn't help you because of a matter of timing.
Last, don't ask if you can ask a question, just ask it.

## Providing Help

There are several way to help, depending on your knowledge. If you know C,
embedded systems, or Cross-compiling, it may be easy to you to contribute to
Lakka source code repository.

If you have a non-mainstream game controller and notice it does not work.
You may contribute to
[joypad-autoconfig repository](https://github.com/libretro/retroarch-joypad-autoconfig).

If you notice any bug you can also report it on our issue tracker.

Last, if you want a new feature, before implementing it come and discuss it with us,
we can help you bootstrap the project to make your contribution easier.

## Feature we want and we'd get faster if we got help

Here is our todo and design list:

 * Adding more joystick profiles, we want Lakka work with your controllers out of box
 * Try Lakka on a variety of hardware and report bugs
 * Enhance this blog look
 * Write a mobile CSS for the website
 * Help us to finish writing the XMB menu driver in RetroArch
 * Designing an auto-update system (upgrading kernel or rootfs like OpenELEC does in Kodi)
 * Add a configurable external command runner in RetroArch, to be able to shutdown the system
 * Writing documentation: telling us what you think it is needed
 * Hang out on IRC to help newbie users

## Development news

We've been working hard this last month. Here are the news:

 * A Game Boy Advance core that runs well on weak devices (even the RPi) thanks to libretro team
 * Website documentation greatly improved, with CSS theme and all
 * Lakka was ported to OpenELEC 5 (work in progress) thanks to OpenELEC team
 * PSX emulator cross compilation bug finally fixed!

So what's missing before the release?

 * Finish merging OpenELEC 5
 * Fix Mupen64 on i386
 * Fix the slow menu on RPi
 * Fix tons of little bugs, for example, Lakka logo is not showing on imx6.  (see our bug tracker)
 * Polish everything
 * Improve website and documentation again, too many pages still contains the TODO word
 * Test the system everywhere, make sure that gamepads work, every graphic card, etc...
 * Carefully prepare communication about the release, with a video, so bloggers can spread the word easily

