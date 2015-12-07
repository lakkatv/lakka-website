## Install Lakka to the SD card

###  Determine your SD card drive

First, you need to know wich drive is your SD card.

Open a Console and list your current drives and partitions with:

    $ diskutil list

This command should output something similar to this

![Disks lists](/images/diskutil1.png)

In my case, disk0 is my hard drive, and disk0s1 to disk0s5 are my partitions.

Now plug your SD card, and type again:

![Disks lists and SD cards](/images/diskutil2.png)

### Flash the image

Now that you know your SD card drive, go where you extracted Lakka, and flash the card.

Please note that dd is a very dangerous command: if you give it the wrong drive identifier, it could erase your hard drive instead of the SD card!

    $ sudo dd if=Lakka-*.img of=/dev/rdiskN

Where diskN is your SD card drive.

![Flashing SD card](/images/macosdd.png)

It should take a few minutes untils the prompt is given back. Once done, you can unplug your SD card and proceed to the next step.

If you get this error:

    dd: /dev/disk4s1: Resource busy

You have to unmount every partitions of your SD card:

    diskutil unmountDisk /dev/diskN

And retry the dd step.
