---
title: New release adding WeTek Core unofficial support
created_at: '2016-02-06 23:30:10'
author_name: kivutar
kind: article
tags:
 - Release
 - WeTek Core
 - Playlists
social:
  thumbnail: media/wetek_core.jpg
---

The Lunar new year is comming. It's time for a minor release.

## Changelog

### System updates

 * Upgrade/Downgrade from the GUI implemented
 * RetroArch updated to 1.3
 * Scanning duplicate bug fixed
 * Fix DualShock 4 support on Generic, C1, RPi1/2, Wtk
 * Reboot menu entry added
 * Joypad configs updated, with support for the latest 8bitdo firmware
 * Snes9x playlist association fixed on the generic images

### Emulators updates

 * Handy (Atari Lynx) compatibility with no-intro ROMs fixed
 * Mednafen PSX updated, with support for enhanced resolutions
 * beetle-ngp added to every builds
 * ARM bugfix for FUSE
 * Genesis Plus GX updated
 * o2em packged and added to every builds
 * mame2003 updated
 * FBA updated with new options
 * cap32 packaged
 * PCSX Rearmed updated
 * Mupen64plus updated
 * Virtualjaguar updated

## Unofficial support for the WeTek Core

I've merged the patches from OpenELEC 6 to add support for the new box from WeTek.

I have not been able to try the image myself on the hardware, but some users reported it working very well, with no major issues (unlike the WeTek Play).

![WeTek Core](media/wetek_core.jpg)

The builds are available for download in our [development builds]().

I keep in touch with the WeTek team on Twitter. I may ask them to send a free sample so that we can start supporting this officially.

## Future plans

 * We received a Pine64, from the Pine64 team.
 * We received an Odroid-C2 from the Hardkernel team.
 * We should receive some UDOO Quad too, from the UDOO team.
 * I'm working hard on improving scanning, boxarts, and game metadata. You will love the next release :)

Thanks a lot to the great community, contributors, and partners for your support!
