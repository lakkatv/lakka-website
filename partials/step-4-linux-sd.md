## Install Lakka to the SD card

### Determining your SD card drive

First, you need to know which drive your SD card is.

List your current drives and partitions with:

    $ ls -l /dev/sd*

You will see a list of files, in my case:

    brw-rw---- 1 root disk  8,  0 22 mars  23:01 /dev/sda
    brw-rw---- 1 root disk  8,  1 22 mars  23:01 /dev/sda1
    brw-rw---- 1 root disk  8,  2 22 mars  23:01 /dev/sda2
    brw-rw---- 1 root disk  8,  3 22 mars  23:01 /dev/sda3
    brw-rw---- 1 root disk  8,  4 22 mars  23:01 /dev/sda4
    brw-rw---- 1 root disk  8,  5 22 mars  23:01 /dev/sda5
    brw-rw-r-- 1 root users 8, 16 22 mars  23:01 /dev/sdb

Those ending with numbers are partitions, while those ending in letters are other drives. In my case, _sda_ is my hard drive, and _sda1_ to _sda5_ are my partitions.

Now plug in your SD card, and again type:

    $ ls -l /dev/sd*

Once again, in my case:

    brw-rw---- 1 root disk  8,  0 22 mars  23:01 /dev/sda
    brw-rw---- 1 root disk  8,  1 22 mars  23:01 /dev/sda1
    brw-rw---- 1 root disk  8,  2 22 mars  23:01 /dev/sda2
    brw-rw---- 1 root disk  8,  3 22 mars  23:01 /dev/sda3
    brw-rw---- 1 root disk  8,  4 22 mars  23:01 /dev/sda4
    brw-rw---- 1 root disk  8,  5 22 mars  23:01 /dev/sda5
    brw-rw-r-- 1 root users 8, 16 22 mars  23:49 /dev/sdb
    brw-rw---- 1 root disk  8, 17 22 mars  23:49 /dev/sdb1
    brw-rw---- 1 root disk  8, 18 22 mars  23:49 /dev/sdb2

Notice that _sdb_ is now filled with one or more partitions. In my case, _sdb1_ and _sdb2_

This means that _sdb_ represents the SD card reader on my laptop. On yours, it can be a different letter. Please adapt the rest of this tutorial to your drive letter.

### Flash the image

Now that you know your SD card drive, go to where you extracted Lakka, and flash the card:

    $ sudo dd if=Lakka-*.img of=/dev/sdX

Where _sdX_ is your SD card drive.

It should take a few minutes, wait for the prompt. Once done, you can unplug your SD card and proceed to the next step.
