---
title: Experimental images for OrangePi and other H3 boards
created_at: '2016-11-20 18:49:38'
author_name: kivutar
kind: article
tags:
 - Orange Pi
 - Banana Pi
 - Release
 - H3
social:
 thumbnail: media/opipc.jpg
---

Last month, I have been working hard with our contributor **@Ntemis** to add support for single board computers powered by the **H3 CPU**.

![Orange Pi PC](media/opipc.jpg)

The newly supported boards are:

 * Orange Pi 2
 * Orange Pi Lite
 * Orange Pi One
 * Orange Pi PC
 * Orange Pi PC+
 * Orange Pi Plus
 * Orange Pi Plus 2E
 * Banana Pi M2+
 * Banana Pi M3
 * Beelink X2

As you can see, H3 is used in a lot of boards. Each of them have different specs. Some of them are available at a very cheap price.

The original OpenELEC and LibreELEC port has been done by **@jernejsk** and we backported it to Lakka.

The images can be downloaded from [there](http://mirror.lakka.tv/nightly/). **@Ntemis** took care of testing the image on some of these boards and Lakka and RetroArch are working well on them.

If you are new to Lakka and want to test one of the images, just adapt the installation instruction that you can find on our website for any other ARM board.

As I don't own any of these boards myself, I can't check them for regressions and support them officially for now. But I will as soon as some contributors send me one or two.

We need more owners of any of these boards on our IRC chan to check if all the images are really working well. Remember that this is mainly untested work when you report bugs.

As always, thanks for your support :)
