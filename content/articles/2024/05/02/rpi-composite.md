---
title: Raspberry Pi gets 240p Composite Video
created_at: '2024-05-02 12:00:00'
author_name: vudiq
kind: article
tags:
 - Raspberry
 - Composite
 - Analog
 - CRT
 - NTSC
social:
  thumbnail: media/thumb.png
---

![Thumbnail](media/thumb.png)
_Thumbnail by MegaManGB_


Special community version of Lakka has been released!

This special version is aimed at Raspberry Pi SBCs, namely Pi 3, Pi 4 and Pi 5. Out of the box these builds work with the composite video and analog audio outputs of these SBCs. In case of Pi 5 some soldering and a USB to 3,5 mm jack soundcard/dongle are required.

# Release summary

This version of Lakka is set up to use analog video and audio outputs, so no changes after flashing the image are required. Two different versions of Raspberry Pi kernels have been used. Raspberry Pi 5 uses kernel 6.6.y, but Pi 3 and Pi 4 use kernel 5.10.y due to broken analog video output in kernel 6.6.y. RetroArch is updated to commit tagged 1.18.0 and all libretro cores are same version as latest v5.0 release. Mesa is at version 24.0.6.

Due to issues (hiccups and stutters) on the current release (`Lakka-v5.x`) and development (`devel`) branches, this community version is based on the `Lakka-v4.x` branch, where these issues are not present.

The community is grateful to all Raspberry Pi engineers and namely to [njhollinghurst](https://github.com/njhollinghurst), who contributed latest updates to the driver for the RP1 VEC of the Pi 5 and provided detailed explanations and help in Raspberry Pi forums. Many thanks also to MegaManGB for hours of testing.

Currently only images with NTSC preset are available, but we will update this article with instructions for PAL users.

You can download the images from below links:

- [Raspberry Pi 3](https://nightly.builds.lakka.tv/members/vudiq/RPi-Composite/RPi3-Composite.aarch64/Lakka-RPi3-Composite.aarch64-20240515-90d524d.img.gz)
- [Raspberry Pi 4](https://nightly.builds.lakka.tv/members/vudiq/RPi-Composite/RPi4-Composite.aarch64/Lakka-RPi4-Composite.aarch64-20240515-90d524d.img.gz)
- [Raspberry Pi 5](https://nightly.builds.lakka.tv/members/vudiq/RPi-Composite/RPi5-Composite.aarch64/Lakka-RPi5-Composite.aarch64-20240515-90d524d.img.gz)

Once updated images will be released with community fixes and updates, use the built-in online updater to download new updates.

Remember to configure each core individually to have an integer vertical height, which varies per core (like 224 or 240 for NES). And mainly use a tvout shader to horizontally even out / blur pixels and alleviate composite artifacting.

## Update May 10th, 2024 / May 15th, 2024

We now include shader specially crafted for CRT televisions using composite input. Also most of the libretro cores are now preconfigured to run at the correct aspect ratio.

Here is a small demonstration from MegaManGB:

![Comparison of various outputs](media/compare.png)

### Wi-Fi configuration

You can edit `wifi-config.txt` to setup Wi-Fi network access after flashing the image and before the first boot. Just uncomment lines `SSID=` and `PSK=` and add your network name (SSID) and password (PSK). It is recommended to use standard characters for both, try to avoid asterisk, semicolon, backslash, spaces and quotes - single and double. You can still use RetroArch to connect to Wi-Fi network as usually, this only helps to set up the Wi-Fi network in advance.

### PAL users

If you are using a PAL TV, you will need to edit and modify `cmdline.txt` and `retroarch-overrides.txt` in the FAT32 partition. Below are instructions for individual devices. These instructions are also included in the files as comments. In case of `retroarch-overrides.txt` you just need to uncomment those lines. In `cmdline.txt` the very first line has to be modified according to the instructions. Please keep in mind that no line breaks are allowed between the arguments - all arguments must be in single line.

#### RPi3 and RPi4:

In `cmdline.txt` change

    video=Composite-1:720x480@60e vc4.tv_norm=NTSC-J

to

    video=Composite-1:720x576@50e

In `retroarch-overrides.txt` add / uncomment following lines:

    video_autoswitch_refresh_rate = "3"
    video_refresh_rate = "50.08"

If you already installed Lakka (i.e. the first boot with partition resizing is already done), modify these options:

- Settings &rarr; Video &rarr; Output &rarr;
  - change Vertical Refresh rate to 50.080 using left/right D-PAD on your gamepad or use the on-screen keyboard
  - change Automatic Refresh Rate Switch to OFF

Then save the settings (not needed if saving of settings on exit is enabled - default behavior) and restart RetroArch.

#### RPi5:

In `cmdline.txt` change

    video=Composite-1:720x480,tv_mode=NTSC-J drm_rp1_vec.cmode=27000:721/16/64/58,480/6/6/34

to

    video=Composite-1:720x576,tv_mode=PAL drm_rp1_vec.cmode=27000,721/12/64/68,576/4/6/38

In `retroarch-overrides.txt` add / uncomment following line:

    video_fullscreen_y = "576"

It is very important to change the Y resolution before first boot, otherwise RetroArch will be not able start normally. If you happen to be in this situation, you have to edit the configuration file in `/storage/.config/retroarch/retroarch.cfg` (via ssh) or `\\lakka-ip\Configfiles\retroarch\retroarch.cfg` (via network share) and change the value of the key `video_fullscreen_y` to `576`. After saving the file RetroArch should pick up the updated file and start normally.

# Known issues

As this is a community release, there is no official support, but feel free to join the community on Discord (channel `#lakkatv`) using the invite link in the footer!

# Final notes

If you want to show your support for further development of the Libretro projects and ecosystem, you can learn more [here](https://retroarch.com/index.php?page=donate).

Happy retro-gaming!
