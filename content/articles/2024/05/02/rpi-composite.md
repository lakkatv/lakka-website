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

This special version is aimed at Raspberry Pi SBCs, namely Pi 3, Pi 4 and Pi 5. Out of the box these builds work with the composite video and analog audio outputs of these SBCs. In case of Pi 5 some soldering and a USB to 3,5" jack soundcard/dongle are required.

# Release summary

This version of Lakka is set up to use analog video and audio outputs, so no changes after flashing the image are required. Two different versions of Raspberry Pi kernels have been used. Raspberry Pi 5 uses kernel 6.6.y, but Pi 3 and Pi 4 use kernel 5.10.y due to broken analog video output in kernel 6.6.y. RetroArch is updated to commit tagged 1.18.0 and all libretro cores are same version as latest v5.0 release. Mesa is at version 24.0.6.

Due to issues (hiccups and stutters) on the current release (`Lakka-v5.x`) and development (`devel`) branches, this community version is based on the `Lakka-v4.x` branch, where these issues are not present.

The community is grateful to all Raspberry Pi engineers and namely to [njhollinghurst](https://github.com/njhollinghurst), who contributed latest updates to the driver for the RP1 VEC of the Pi 5 and provided detailed explanations and help in Raspberry Pi forums. Many thanks also to MegaManGB for hours of testing.

Currently only images with NTSC preset are available, but we will update this article with instructions for PAL users.

You can download the images from below links:

- [Raspberry Pi 3](https://nightly.builds.lakka.tv/members/vudiq/RPi-Composite/RPi3-Composite.aarch64/Lakka-RPi3-Composite.aarch64-20240510-7a626a4.img.gz)
- [Raspberry Pi 4](https://nightly.builds.lakka.tv/members/vudiq/RPi-Composite/RPi4-Composite.aarch64/Lakka-RPi4-Composite.aarch64-20240510-7a626a4.img.gz)
- [Raspberry Pi 5](https://nightly.builds.lakka.tv/members/vudiq/RPi-Composite/RPi5-Composite.aarch64/Lakka-RPi5-Composite.aarch64-20240510-7a626a4.img.gz)

Once updated images will be released with community fixes and updates, use the built-in online updater to download new udpates.

Remember to configure each core individually to have an integer vertical height, which varies per core (like 224 or 240 for NES). And mainly use a tvout shader to horizontally even out / blur pixels and alleviate composite artifacting.

## Update May 10th, 2024

We now include shader specially crafted for CRT televisions using composite input. Also most of the libretro cores are now preconfigured to run at the correct aspect ratio.

Here is a small demonstration from MegaManGB:

![Comparison of various outputs](media/compare.png)

### Wi-Fi configuration

You can edit `wifi-config.txt` to setup Wi-Fi network access after flashing the image and before the first boot. Just uncomment lines `SSID=` and `PSK=` and add your network name (SSID) and password (PSK). It is recommended to use standard characters for both, try to avoid asterisk, semicolon, backslash, spaces and quotes - single and double. You can still use RetroArch to connect to Wi-Fi network as usually, this only helps to set up the Wi-Fi network in advance.

### PAL users

If you are using a PAL TV, you will need to edit and modify following files in the FAT32 partition:

- `cmdline.txt`:
  - RPi3 and RPi4:
    - change `video=Composite-1:720x480@60e` to `video=Composite-1:720x576@50e`
    - remove `vc4.tv_norm=NTSC-J`
  - RPi5:
    - change `video=Composite-1:720x480,tv_mode=NTSC-J` to `video=Composite-1:720x576,tv_mode=PAL`
    - change `drm_rp1_vec.cmode=27000:721/16/64/58,480/6/6/34` to `drm_rp1_vec.cmode=27000,721/12/64/68,576/4/6/38`
- `retroarch-overrides.txt`: (this must be done after flashing the image and before the first boot!)
  - RPi3/RPi4/RPi5: add a new line with text `video_refresh_rate = "50.000000"`
  - only RPi5: add a new line with text `video_fullscreen_y = "576"`

# Known issues

As this is a community release, there is no official support, but feel free to join the community on Discord (channel `#lakkatv`) using the invite link in the footer!

# Final notes

If you want to show your support for further development of the Libretro projects and ecosystem, you can learn more [here](https://retroarch.com/index.php?page=donate).

Happy retro-gaming!
