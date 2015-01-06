---
title: Providing and asking for help
created_at: '2015-01-07 00:03:51'
author_name: kivutar, floreal
kind: article
---

Hello everyone! Here is the first article in 2015. I've been willing to write about this 
subject for a little while. It is about help. When you ask for help in a first hand; when you
want provide help on another hand.

## Getting Help

First of all, know that we like to help people because we want Lakka to be spread
around the world. And we want it as easy to use as possible, meaning with
the less problem possible for the end user.

You have several ways to get help:

 * Reading the [FAQ](/doc/FAQ)
 * Reading the [documentation](/doc/Home)
 * Using social networks ([twitter](https://twitter.com/lakkatv), [facebook](https://www.facebook.com/lakkatv), [G+](https://plus.google.com/+LakkaTv/posts), [diaspora / framasphère](https://framasphere.org/people/a7eb87705944013249142a0000053625))
 * Using the [contact form](/contact)
 * Using [IRC](irc://irc.freenode.org/#lakkatv)

For this last item, please keep in mind that most of our developpers live in Western Europe time zone.
You also need to know that we are always online, but we also might be AFK when 
you talk to us. We will see your message, and we will answer with a little delay.
Please don't logout before getting a reply. This is quite frustrating, so if
you can't stay online on IRC, please send us an e-mail, and quote yourself in
it. We don't like to know or believe we couldn't help you because of a matter
of timing. Oh and don't ask if you can ask a question, just ask it.

## Providing Help

There are several way to help, depending on your knowledge. If you know C,
embeded systems or Cross-compiling, it may be easy to you to contribute to
Lakka source code repository.

If you have a non mainstream game controller and you notice it doesn't work.
You may contribute to
[joypad-autoconfig repository](https://github.com/libretro/retroarch-joypad-autoconfig).

If you notice any bug you can also report it on our issue tracker.

At least, if you want a new feature, before implemnting it. Come and discus it with us,
we can help you bootstraping the project to make your contribution easier.

## Feature we want and we'd get faster if we get help

Here are some stuff to do and design:

 * Adding more joystick profiles, we want Lakka not to bother you with configuration to do once out of the box
 * Try Lakka on a variety of hardware and report bugs
 * Enhance this blog look
 * Write a mobile CSS for the website
 * Help us to finish writting the XMB menu driver in RetroArch
 * Designing an auto-update system (upgrading kernel or rootfs like OpenELEC does in Kodi)
 * Add a parametrable external command runner in RetroArch, to be able to shutdown the system
 * Writing documentation: telling us what you think it is needed
 * Hang on IRC to help newbie users

## Development news

We've been working hard this last month. Here are the news:

 * A Game Boy Advance core that runs well on weak devices (even the RPi) thanks to libretro team
 * Website documentation greatly improved, with CSS theme and all
 * Lakka being ported on OpenELEC 5 (work in progress) thanks to OpenELEC team
 * PSX emulator cross compilation bug finally fixed!

So what's missing before the release?

 * Finish to merge OpenELEC 5
 * Fix Mupen64 on i386
 * Fix the slow menu on RPi
 * Fix a ton of little bugs, like Lakka logo not showing on imx6, polish everything, see our bug tracker
 * Improve website and documentation again, too many pages still contains the TODO word
 * Test the system everywhere, make sure that every gamepad works, every graphic card, etc
 * Carefully prepare communication about the release, with a video, so bloggers can spread the word easily

