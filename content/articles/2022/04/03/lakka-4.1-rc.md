---
title: Lakka 4.1 release candidate
created_at: '2022-04-03 10:00:00'
author_name: vudiq
kind: article
tags:
 - Release
 - Bluetooth
 - Nvidia
 - Vulkan
social:
  thumbnail: media/thumb.png
---

![Thumbnail](media/thumb.png)
_Thumbnail by [jdalmanza](https://www.instagram.com/jdalmanza/)_


We are proud to announce a release canditate for the upcoming release of Lakka 4.1. This release candidate is considered to be stable. Before we release final 4.1 version, we want to give it a good test drive by a broader audience. We thank all testers in the community who give us valuable feedback on the nightly development builds.

# What is new?

Here are changes since the release of Lakka 4.0:

- RetroArch updated to version [1.10.2](https://www.libretro.com/index.php/retroarch-1-10-2-release/)
- Cores updated to their most recent versions
- New cores  added
  - `race`: Neo-Geo Pocket
  - `bk-emulator`: BK-0010/0011/Terak 8510a
  - `same_cdi`: Philips CD-i
  - `mame`: MAME current
- `duckstation` core (Sony Playstation) removed
- Mesa updated to version [22.0.1](https://docs.mesa3d.org/relnotes/22.0.1.html)
- Mainline kernel updated to 5.10.109 (PC, Amlogic, Allwinner, NXP)
- Raspberry kernel updated to 5.10.103
- Nvidia support fixed (driver is now compiled as module)
- Added Support for USB Wi-Fi dongles ASUS BT500 and TP-Link UB500
- RPi.GPIO Python library added to all Raspberry Pi images (support for custom scripts for various cases)
- System files for standalone cores added (no need to add them manually, but we disabled the system files downloader in Lakka - see below)

## Removed system files downloader

System files downloader was removed from Lakka, as Lakka already ships files in the `system` folder required by various cores. It is still possible to add own files as before, but as some of these files have to match the version of the libretro core, this feature is not available in Lakka in order to avoid incompatibility between core and the files in `system` folder (espcially in case of PPSSPP). Files required by following cores are included in the Lakka image:

- `cannonball`: tile patch and tile map files, you have to add your ROM files if you want to use the core from the standalone launcher
- `dinothawr`
- `dolphin`
- `ecwolf`
- `fbneo`: high score file
- `mame2003-plus`: artwork, high score / cheat / history files
- `mame`: artwork and sample files
- `nxengine`: Cave Story files
- `ppsspp`: assets
- `prboom`
- `scummvm`: themes and DAT files for various game engines
- `uae4arm`: floppy drive sounds
- `xrick`

If you have already added some system files to your Lakka, they will still have priority over files in the image. To remove these files, please remove them via SCP / SFTP from the `/storage/system` folder (do not remove them via SAMBA share `System`, as this share shows already the path used by RetroArch; you can use the share to add new files).

## Bluetooth pairing

Couple releases back a hack was added to RetroArch to remove existing pairings. This is useful in case you need to re-pair a game controller (e.g. you paired it with different device), but as the pairing is already stored in the Lakka OS, only attempt to connect is made. To remove pairing, simply navigate to `Settings` &rarr; `Bluetooth`, wait for the scanning to finish (you do not need to put your game controller in pairing mode yet) and if you see your game controller, scroll to it and then press the `Start` button on connected game controller or press the `Space` key on the keyboard. Then restart RetroArch, switch on pairing mode on your game controller, navigate to `Settings` &rarr; `Bluetooth`, wait for the scanning to finish and chose your game controller for pairing.

We have also added a small fix in cases your game controller would not reconnect after it was already succesfully paired, but it will not automatically connect after waking it up / rebooting. However you need to re-pair your game controller, so please follow the steps in previous paragraph.

To auto-connect your paired game controller after boot, make sure that Bluetooth service is enabled via `Settings` &rarr; `Services` &rarr; `Bluetooth`.

# How do I get it?

You can download this release candidate:

- Use the Online Updater in RetroArch (recommended; for devices with 2 GB RAM or more)
- Use the command line update script `lakka-update.sh` (in case your device has 1 GB of RAM or less)
- [Download update .tar file](https://le-builds.lakka.tv/.Lakka-4.1-rc) and transfer the file:
  - to `/storage/.update` using SCP / SFTP
  - to the share `Updater` using SAMBA

# Vulkan / GL

Many cores already support Vulkan, therefore on platforms, where Vulkan support is included (PC with Intel and AMD GPU, Raspberry Pi 4, Nintendo Switch) we recommend using the `vulkan` video driver (`Settings` &rarr; `Video` &rarr; `Output` &rarr; `Video`). Many cores should automatically switch to different video driver in case they do not support the selected one. If you encounter crash, please try again with `gl` / `glcore` video driver, as most probably the level of implementation of Vulkan on the platform / in the GPU driver does not meet the requirements of the core or the Vulkan support for your platform is not supported by the core.

# Final notes

If you want to follow the development of Lakka more closely, you can download [latest Lakka nightly builds](<%= @config[:devel][:'all-latest'] %>).

See [GitHub](<%= config[:links][:github] %>/issues) for information about currently open bugs and issues and also for possible workarounds for these bugs/issues.

If you want to show your support for further development of the Libretro projects and ecosystem, you can learn more [here](https://retroarch.com/index.php?page=donate).

Happy retro-gaming!
