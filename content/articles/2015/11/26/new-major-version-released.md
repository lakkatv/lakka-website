---
title: New major version released
created_at: '2015-11-26 14:47:09'
author_name: kivutar
kind: article
social:
  thumbnail: media/details.png
tags:
  - Release
  - Boxarts
  - Playlists
  - Database
  - Dynamic Backgrounds
  - XMB
  - Menu
  - Odroid-XU3
  - Cubieboard
---

We are proud to announce the release of a new major version of Lakka!

This new version is still based on OpenELEC 5, but ships the latest RetroArch, with a lot of changes on the graphical interface.

The download links and the installation guide have been updated to reflect the new way of launching games.

## New features

### New tabs

When booting a fresh installation of Lakka, you will start with 4 tabs:

![4 tabs](media/4tabs.png)

 1. The **RetroArch Menu**, to launch ROMs manually, and shutdown the OS
 2. The **Settings tab**, to tweak your Lakka instance
 3. The **History tab**, to browse the games you played recently
 4. The **+ tab**, to add new custom tabs

### Database, Scanning and Playlists

![Game details](media/details.png)

The new RetroArch included in Lakka introduces a game database. This database is nothing more than the DAT files from the famous [No-Intro](https://no-intro.org/) initiative, converted to binary for performance reasons. It contains metadata about the games, like the publisher and the release date. With this, it becomes easy to browse games made by the same team. This database also contains the checksums of ROMs, and RetroArch uses these checksums to match your ROMs against the database entries.

![Game Sorting](media/game-sorting.png)

Since users were constantly complaining about the wrong game sorting in the previous versions of Lakka, we implemented a scanning system that will check all your ROMs against the database and generate one playlist by system. This is why we recommend you to use the No-Intro romsets from now, since they will scan properly. We ensure that adding custom playlists that doesn't refer to a game system or contains ROMs not part of the no-intro sets will work.

![Playlist core association](media/association.png)

A default Libretro core is assigned to each playlist. You can customize this choice in the Playlist Settings. You can also completely remove that association by pressing START, then RetroArch will let you choose the core on a per-ROM basis.

### Dynamic backgrounds and Boxarts

RetroArch developers recently added non-blocking IO that allows us to load images without causing lag in the interface. With this, we can release a first version of two popular features : dynamic backgrounds and boxarts.

![Dynamic backgrounds](media/dynamic-wallpapers.png)

With dynamic backgrounds, you can associate a custom background image to each entries of the horizontal list. For this:

 1. Enable the feature in the Menu Settings
 2. Set your Dynamic Background Dir in the Directory Settings to point to a folder containing the images.
 
Name the images after the titles that appear at the top left corner in our interface. The format have to be RGBA PNG. This feature will lag on weak hardware, but will work well for PC users. Three ready to use packs are provided in this release, under /usr/share/retroarch-assets/wallpapers/.

![Boxarts](media/boxarts.png)

Boxarts works exactly the same, except that you have to follow a directory structure to avoid naming conflicts. For example, **boxarts/Nintendo - Game Boy/Named_Snaps/Tetris (World).png**. Images have to be in RGBA PNG format, and have to be named according the entries in the vertical list. We don't provide boxart packs yet, but the project [No-Intro Screenshots Reloaded](https://screenshotpalace.wordpress.com/no-intro-screenshot-reloaded/) provide ready to use screenshot packs.

### DRM/KMS is back on the Generic PC builds

A big bug with Radeon GPU was preventing us to provide DRM/KMS builds of Lakka for PCs. @lugaidster on RetroArch issue tracker found a workaround that we can use in Lakka, allowing us to remove the huge X11 dependency again.

However, some users reported too much incompatibilities and poor performance with the DRM/KMS builds. We still believe that being X11 free is the future, and that vendors will soon release proprietary drivers compatible with DRM/KMS. In the meanwhile, I may provide unofficial X11 builds somewhere.

### Official support for two new boards: the old Cubieboard, and the new Odroid-XU3/4

![Odroid-XU3](media/odroid-xu3.jpg)

The 55fps bug that was affecting the Odroid-XU3/4 is finally gone. It was not a display bug. We just needed to set the audio rate to 44100 instead of the default 48000. Special thanks to @maister who found the cause of the problem. We are very happy to provide a stable release for the XU3/4 after all this time.

The Cubieboard port is stable for a while. I didn't test it much, but it is very similar to the other sunxi boards that we already have. So I added it to the list of officially supported devices too.

## Missing features

Scanning is still a work in progress. The following systems need to be implemented:

 * Arcade scanning
 * PCE-CD scanning
 * Sega CD scanning

## Upgrading

The config files of RetroArch and the directory structure of the storage partition changed a lot. So we recommend to not use the regular upgrade path, and do a fresh install this time. Don't forget to backup your games and saves.

## Conclusion

Please remember that the new features are very young. They certainly need polishing and we already know where are most of the rough edges. I will spend the next weeks fixing the bugs and you will certainly have a new bugfix version in the next month. I also need to spend some time updating the documentation.

Happy gaming!
