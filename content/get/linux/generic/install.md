---
title: Get Lakka - Installation
step: 4
previous: true
next: first-boot
---

## Create your installation medium

To setup Lakka on a PC, you have to create a Live USB installer. You need a USB pendrive of at least 512mo. All data on this drive will be completely lost.

### Determine your USB drive

First, you need to know wich drive is your USB drive.

List your current drives and partitions:

    $ ls -l /dev/sd*

You will see a list of files, in my case:

    brw-rw---- 1 root disk  8,  0 22 mars  23:01 /dev/sda
    brw-rw---- 1 root disk  8,  1 22 mars  23:01 /dev/sda1
    brw-rw---- 1 root disk  8,  2 22 mars  23:01 /dev/sda2
    brw-rw---- 1 root disk  8,  3 22 mars  23:01 /dev/sda3
    brw-rw---- 1 root disk  8,  4 22 mars  23:01 /dev/sda4
    brw-rw---- 1 root disk  8,  5 22 mars  23:01 /dev/sda5
    brw-rw-r-- 1 root users 8, 16 22 mars  23:01 /dev/sdb

Those ending with numbers are partitons. Others are drives. In my case, _sda_ is my hard drive, and _sda1_ to _sda5_ are my partitions. Here /dev/sdb is my SD card drive, wich is always present.

Now plug your USB stick and type again:

    $ ls -l /dev/sd*

    brw-rw---- 1 root disk  8,  0 22 mars  23:01 /dev/sda
    brw-rw---- 1 root disk  8,  1 22 mars  23:01 /dev/sda1
    brw-rw---- 1 root disk  8,  2 22 mars  23:01 /dev/sda2
    brw-rw---- 1 root disk  8,  3 22 mars  23:01 /dev/sda3
    brw-rw---- 1 root disk  8,  4 22 mars  23:01 /dev/sda4
    brw-rw---- 1 root disk  8,  5 22 mars  23:01 /dev/sda5
    brw-rw-r-- 1 root users 8, 16 22 mars  23:49 /dev/sdb
    brw-rw---- 1 root disk  8, 17 22 mars  23:49 /dev/sdc
    brw-rw---- 1 root disk  8, 18 22 mars  23:49 /dev/sdc1

Notice that _sdc_ just appeared and can be filled with one or more partitions. In my case, _sdc1_.

This means that _sdc_ represents the USB pen on my laptop. On yours, it can be a different letter. Please adapt the rest of this tutorial to your drive letter.

### Flash the image

Now that you know your USB drive, go where you extracted Lakka, and flash the card.

    $ sudo dd if=Lakka-*.img of=/dev/sdX

Where _sdX_ is your USB drive.

It should take a few minutes untils the prompt is given back. Once done, you can unplug your USB drive and proceed to the next step.
