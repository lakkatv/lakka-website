---
title: Raspberry Pi 3 aarch64 support
created_at: '2021-06-10 10:00:00'
author_name: vudiq
kind: article
tags:
 - RaspberryPi
 - aarch64
 - GPICase
social:
  thumbnail: media/thumb.png
---

![Thumbnail](media/thumb.png)

Before next release here is a quick update on our progress.

Thanks to our fellow contributor dmrlawson we have nightly builds for Rasberry Pi 3 with 64 bit support. You can grab it [here](<%= @config[:devel][:'all-latest'] %>RPi3.aarch64/). Nintendo 64 cores will be included in the next nightly build. PCSX ReARMed will probably not perform well (dynarec is not available). Credit for the aarch64 kernel config goes to antonlacon.

And thanks to our another fellow contributor SethBarberee for the fixed GPICase port - the rotation bug is fixed. Get the latest nightly build [here](<%= @config[:devel][:'all-latest'] %>GPICase.arm/).

We are looking forward to the next RetroArch release. Please stay tuned for the next version of Lakka.
