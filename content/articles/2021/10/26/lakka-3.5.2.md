---
title: Lakka 3.5.2 release
created_at: '2021-10-26 10:00:00'
author_name: vudiq
kind: article
tags:
 - Release
social:
  thumbnail: media/thumb.png
---

![Thumbnail](media/thumb.png)

New version of Lakka has been released!

We are happy to announce the new and updated version of Lakka.

# Release summary

Changes since version 3.5.1:

- RetroArch updated to [1.9.12](https://www.libretro.com/index.php/retroarch-1-9-12-release/)
- Cores updated to their most recent versions
- DAT/XML files for manual scanning of roms for `fbneo` and `mame2003-plus` added to the image
- Database files are now accessible via SAMBA share `Database`
- Nintendo Switch: fixed booting / shutdown (updated systemd mount units)
- `disable_ertm=1` removed (caused issues with other gamepads disconnecting)

# Known issues

## Xbox wireless gamepads

As we removed `disable_ertm=1` from the image, you may need to add it back manually in order to make the Bluetooth connection with your Xbox wireless gamepad reliable. To do so you kindly follow these instructions:

Either [access your Lakka device via command line](/doc/Accessing-Lakka-command-line-interface/) and execute:


     echo options bluetooth disable_ertm=1 > /storage/.config/modprobe.d/xpadneo.conf


Or [access Lakka file system via SAMBA](/doc/Accessing-Lakka-filesystem/) and add file named `xpadneo.conf` with following contents to the share `Configfiles` &rarr; subfolder `modprobe.d`:


     options bluetooth disable_ertm=1



## Older Intel GPUs

If you cannot boot to RetroArch and get stuck on the boot screen with the Lakka flower and you have an older Intel GPUs, follow these instructions to rectify this issue:

Either [access your Lakka device via command line](/doc/Accessing-Lakka-command-line-interface/) and execute:


     echo MESA_LOADER_DRIVER_OVERRIDE=crocus > /storage/.cache/services/retroarch.conf


Or [access Lakka file system via SAMBA](/doc/Accessing-Lakka-filesystem/) and add (or edit the existing) file named `retroarch.conf` with following contents to the share `Services` &rarr; subfolder `services`:


     MESA_LOADER_DRIVER_OVERRIDE=crocus



## No video output over HDMI on Raspberry Pi

In case you have no video output over HDMI on your Raspberry Pi, edit `distroconfig.txt` and remove following two lines:



     hdmi_max_pixel_freq:0=200000000
     hdmi_max_pixel_freq:1=200000000



The above settings are aimed to display at maximum 1080p on 4K displays (as 4K is not suitable for Lakka on Raspberry Pi), however it seem that these settings are not working properly with some non-4K displays/TV sets.


# Final notes

You can download the latest release from [Lakka download page](/get). If you want to follow the development of Lakka more closely, you can download [latest Lakka nightly builds](<%= @config[:devel][:'all-latest'] %>).

If you want to show your support for further development of the Libretro projects and ecosystem, you can learn more [here](https://retroarch.com/index.php?page=donate).

Happy retro-gaming!
