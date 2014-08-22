## Setup Lakka on the PC

Follow the following steps:

1.  Plug the USB installer in the PC you want to setup
2.  Wire your PC to a screen or TV
3.  Light your screen or TV
4.  Plug an ethernet wire (optional)
5.  Plug one of the supported joypads in one of your PC USB ports
6.  Power your PC
7.  Enter BIOS and allow USB boot (optional)

You should see our bootloader screen:

![Bootloader menu](/images/syslinux.png)

Choosing *Run Live* will run Lakka as a persistent live USB pen. You will be able to check if Lakka works on your hardware, without altering your PC hard drive or partitions. You can keep your USB pen and boot it on several PCs around you, it will keep you ROMs and your saves as expected. But it's not the subject of this tutorial.

To setup Lakka on your target PC, choose *Run Installer*.

Our splash screen will shortly appear:

![Splash Screen](/images/splash.png)

Followed by the installation wizzard..

![Installer menu](/images/installer1.png)

Choose *Quick Install*.

![Installer - Quick Install](/images/installer2.png)

The installer will list your hard drives. On a typical HTPC or NUC you should have only one.

![Hard disk drive](/images/installer3.png)

The installer will now copy the files to your target hard drive.

![Installation process](/images/installer4.png)

At the end of this process, you will be asked to reboot. Choose *Reboot* and unplug your USB drive before it boots.

The system will expand the filesystems and reboot after 30 seconds. This happens only on the first boot. The system will automatically reboot and this time it should be fast.

If everything went OK, you should now be able to navigate RGUI, the interface of RetroArch:

![RGUI](/images/rgui.png)

Congratulations, you have successfully installed Lakka!

You can now proceed to the final step.