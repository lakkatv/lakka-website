## Setup Lakka on the PC

Follow the following steps:

1.  Plug in the USB installer into the PC you want to setup
2.  Wire your PC to a Display or TV
3.  Power on your Display or TV
4.  Plug in an ethernet wire (optional)
5.  Plug in a supported joypad into one of your USB ports on your PC
6.  Power on your PC
7.  Enter BIOS and allow booting of a USB (optional)

You should see our bootloader screen:

![Bootloader menu](/images/syslinux.png)

Choosing *Run Live* will run Lakka as a persistent live USB pen. You will be able to check if Lakka works on your hardware, without altering your PC's hard drive or partitions. You can keep your USB pen and boot it on several PCs around you, it will keep your ROMs and your saves as expected, but it's not the subject of this tutorial.

To setup Lakka on your target PC, choose *Run Installer*.

Our splash screen will shortly appear:

![Splash Screen](/images/splash.png)

Followed by the installation wizard..

![Installer menu](/images/installer1.png)

Choose *Quick Install*.

![Installer - Quick Install](/images/installer2.png)

The installer will list your hard drives. On a typical Home Theater PC or NUC you should have only one.

![Hard disk drive](/images/installer3.png)

The installer will copy the files to your target hard drive.

![Installation process](/images/installer4.png)

At the end of this process, you will be asked to reboot. Choose *Reboot* and unplug your USB drive before it boots.

The system will expand the filesystems and reboot after 30 seconds. This happens only on the first boot. The system will automatically reboot and the rest of the boots should be fast.

If everything went OK, you should now be able to navigate Lakka Menu, our graphical interface:

![Lakka menu](/images/lakkamenu.png)

Congratulations, you have successfully installed Lakka!

You can now proceed to the final step.
