---
title: Lakka 2.3.2 with RetroArch 1.8.4
created_at: '2020-01-22 14:00:00'
author_name: natinusala
kind: article
tags:
 - Release
 - Tier 1 Release
social:
  thumbnail: media/thumb.png
---

![Thumbnail](media/thumb.png)

The Lakka team wishes everyone a happy new year and welcomes 2020 with a new update and a new tier-based releases system!

This new Lakka update, 2.3.2, contains RetroArch 1.8.4 (was 1.7.2), some new cores and a handful of core updates.

As part of our new tier-based updates, Lakka 2.3.2 is for now only available for the following platforms:

- 64-bit Generic (`x86_64`)
- Rasperry Pi 1 and Zero (with and without GPICase)
- Raspberry Pi 2 and 3
- Raspbery Pi 4

The rest of the platforms will be updated during the following weeks.

As usual, you can update by downloading the new images from the website or by going in the Online Updater directly in your Lakka box.

# New tier-based updates schedule

Lakka supports more than 40 different platforms, and it has gotten quite hard to maintain and support them all actively. Some of them are discontinued products, and nobody on the team has them anymore.

As a result, we have decided to split all platforms into different tiers. Basically, higher tier platforms will have active support and more frequent updates, and lower tier platforms will have more sparse releases (if any).

The high tier platforms are the most popular ones:

- 64-bit Generic (`x86_64`)
- Rasperry Pi 1 and Zero (with and without GPICase)
- Raspberry Pi 2 and 3
- Raspbery Pi 4

For now, all other platforms are placed under the lower tier category. We may do a middle tier in the future, with platforms such as Pine64 and Odroid boards, which are still quite popular nonetheless.

Keep an eye for new tier releases on this website and on our social media accounts!

# Manual content scanner

It's been a long time since Lakka got a RetroArch update. This new version adds some welcome features - the most interesting this time is the manual content scanner. You read it right, no more database is required to build your playlists!

Whether it's because the database is missing or your platform has little memory to handle big scans, you now have the choice to do a manual scan to build playlists on your Lakka box. This new scanning method simply takes all files ending with a known extension in a folder and adds them to the playlist for that system. It's as simple as it gets!

You can see the manual content scanner menu in the thumbnail of this article (MaterialUI menu driver).

# Clean playlists

Another quality of life improvement for playlists is the new "clean playlists" option. This allows you to clean your playlists after removing your games files, as well as resetting core association if the core doesn't exist anymore.

This new option does the following:

- Remove all entries where the game file has been removed
- Remove all duplicates
- Resets the core association if the core can no longer be found
    - RetroArch will ask you which core to use the next time you try to run a game from that playlist
    - If the core association is correct but the core has been renamed since, the new core name is updated in the playlist

Cores _can_ be removed when updating Lakka, even if we try to do it least frequently as possible. For instance, Lakka 2.3 removed a lot of old cores in favor of their new, improved versions.

Thanks to this new clean playlists feature, removing a core is no longer considered a breaking change when updating Lakka.

# Disk control improvements

The latest major improvement is the disk control overhaul, which enhances disk swapping for game with a high number of disks (such as Amiga floppy games).

You can read the entirety of the changes made to the disk swapping system in the [RetroArch 1.8.4 blog post](https://www.libretro.com/index.php/retroarch-1-8-4-released/).

# Core updates

As usual, everything in the libretro ecosystem has been updated to the very last version: cores, databases, overlays, joypad autoconfigs...

## New core: quicknes

This very lightweight Nintendo Entertainment System was only enabled for some platforms on Lakka. It is now enabled for all of them.

## New cores: vitaquake2 and vitaquake3

Only available for the Generic platform for now, those two cores are open source reimplementations of the Quake II and III engines respectively. Originally written for the PlayStation Vita by Rinnegatamante, both homebrews are now available for everyone as libretro cores.

## New core: NeoCD

The latest core to be added in this Lakka update is NeoCD-Libretro, an improved version of the NeoCD Neo Geo CD emulator. This new version of NeoCD is more accurate and performs better than the previous standalone emulator, even on low end hardware like a Raspberry Pi.

## Goodbye dosbox, hello dosbox-svn

And finally, the old dosbox core retires with Lakka 2.3.2. The newer dosbox-svn core was added some time ago, and it's time for it to be used as a default and for the old one to be removed.

# The future of Lakka

As time goes by, we are slowly moving forward to Lakka 3.0, which we already talked about in a previous release article. We will take this opportunity to drop all the old platforms we cannot maintain and support anymore. Lakka 2.0 will still be available for those, but we won't be moving forward with them for the future.

The list of all dropped platforms will be made available when we release Lakka 3.0.

In the meantime, you can already try Lakka 3.0 by downloading an image for your device [here](<%= @config[:devel][:'all-latest'] %>)! Since this is a major rewrite of the system, we would like to have user feedbacks as we work on it. Don't hesitate to post an issue on [our GitHub repository](<%= @config[:links][:github] %>/issues).

You are also welcome to join our [Discord server](<%= @config[:links][:discord] %>) (`#lakkatv` channel) to contribute to the project, report your findings, ask for support or just hang out with retrogaming and DIY enthusiasts around the globe!
