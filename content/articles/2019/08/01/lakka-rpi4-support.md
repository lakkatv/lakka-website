---
title: Lakka now has Raspberry Pi 4 support!
created_at: '2019-08-01 15:15:00'
author_name: natinusala
kind: article
tags:
  - RaspberryPi
  - RaspberryPi4
social:
  thumbnail: media/rpi4.jpg
---

Lakka now has support for the Raspberry Pi 4, the new board of the Raspberry Foundation!

![RPi4](media/rpi4.jpg)

Featuring more RAM (up to 4GB depending on the model), a more powerful CPU (Cortex-A72 family) coupled to a new GPU (VideoCore VI), this new board is a great value for money since the price range is about the same as the previous boards.

For now, you can find images as well as NOOBS archives in our [nightlies repository](https://nightly.builds.lakka.tv/). Pick the latest date, then the `RPi2.RPi4.arm` directory and finally download the `.img.gz` (flashable image) or `.tar` (NOOBS archive) file. The installation process is the same as the one for Raspberry Pi 2 and 3 (extract then flash the image using Etcher or `dd`).

We recommend that you update the firmware of your Raspberry Pi 4 to lower its temperature - you can find instructions on how to do it [here](https://www.raspberrypi.org/forums/viewtopic.php?f=28&t=243500&p=1490467#p1490467). A heatsink is also recommended if you are using heavy cores such as N64 emulators or PSP emulators.

The next Lakka update will contain this new platform as well as some exciting new features on the RetroArch side, so stay tuned!
