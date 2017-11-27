## Install Lakka to the SD card

###  Determining your SD card drive

First, you need to know which drive is your SD card.

Open a Console and list your current drives and partitions with:

    $ diskutil list

This command should output something similar to this

![Disks lists](/images/diskutil1.png)

In my case, disk0 is my hard drive, and disk0s1 to disk0s5 are my partitions.

Now plug in your SD card, and type again:

![Disks lists and SD cards](/images/diskutil2.png)

### Flashing the image

Now that you know your SD card drive, go to where you extracted Lakka, and flash the card.

Please note that dd is a very dangerous command: if you give it the wrong drive identifier, it could erase your hard drive instead of the SD card!

    $ sudo dd if=Lakka-*.img of=/dev/diskN

Where diskN is your SD card drive.

![Flashing SD card](/images/macosdd.png)

It should take a few minutes, wait for the prompt. Once done, you can unplug your SD card and proceed to the next step.

If you get this error:

    dd: /dev/disk4s1: Resource busy

You have to unmount every partition of your SD card, this can be done with:

    diskutil unmountDisk /dev/diskN

And then you can retry the dd step.
