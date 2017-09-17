---
title: Get Lakka - Installation
step: 4
previous: true
next: first-boot
---

## Create your installation medium

To setup Lakka on a PC, you have to create a Live USB installer. You need a USB pendrive of at least 512mo. All data on this drive will be completely lost.

### Determine your USB drive

First, you need to know which drive is your USB pen.

Open a Console and list your current drives and partitions with:

     $ diskutil list

This command should output something similar to this:

![Disks lists](/images/diskutil1.png)

In my case, disk0 is my hard drive, and disk0s1 to disk0s5 are my partitions.

Now plug your USB pen, and type again:

    $ diskutil list

![Flashing USB stick](/images/diskutil2.png)
    
Notice that a new disk called disk1 appeared.

This means that disk1 represents the USB pen on my Macbook. On yours, it can be a different identifier. Please adapt the rest of this tutorial to your drive identifier.

### Flash the image

Now that you know your USB drive, go where you extracted Lakka, and flash the drive.

Please note that dd is a very dangerous command: if you give it the wrong drive identifier, it could erase your hard drive instead of the USB drive!

    $ sudo dd if=Lakka-*.img of=/dev/diskN

Where diskN is your USB drive.

![Flashing SD card](/images/macosdd.png)

It should take a few minutes untils the prompt is given back. Once done, you can unplug your USB pen and proceed to the next step.

If you get this error:

    dd: /dev/disk4s1: Resource busy

You have to unmount every partitions of your USB drive:

    diskutil unmount /dev/diskNs1

And retry the dd step.

