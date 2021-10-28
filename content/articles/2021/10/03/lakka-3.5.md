---
title: Lakka 3.5 release
created_at: '2021-10-03 10:00:00'
author_name: vudiq
kind: article
tags:
 - Release
social:
  thumbnail: media/thumb.png
---

![Thumbnail](media/thumb.png)

New version of Lakka has been released!

We are happy to announce new and updated version of Lakka.

Changes since version 3.4:

- RetroArch updated to 1.9.10
  - Added Bluetooth pairing removal (press <kbd>START</kbd> / <kbd>Space</kbd> in the device list to remove pairing for the selected device)
- Cores updated to their most recent versions
  - Enabled RDP/RSP dynarec on N64 cores on Generic
- Mesa updated to 21.2.3
  - DRI i965 driver replaced with GALLIUM crocus driver
- Added support for new devices
  - [PiBoyDMG](https://www.experimentalpi.com/PiBoy-DMG--Kit_p_18.html)
  - [Capcom Home Arcade](https://capcomhomearcade.com)
  - [RetroDreamer](https://www.kickstarter.com/projects/eddietay/retro-dreamer-g4a-cm4-by-my-retro-game-case)
  - [Anbernic RG351MP](https://anbernic.com/products/anbernic-new-rg351mp-retro-games-built)
- Added [xpadneo](https://atar-axis.github.io/xpadneo/) driver to support Xbox Wireless gamepads
- Added WireGuard VPN support
- Updated Kernel/Firmware

You can download the latest release from [Lakka download page](/get/). If you want to follow the development of Lakka more closely, you can download [latest Lakka nightly builds](<%= @config[:devel][:'all-latest'] %>).

If you want to show your support for further development of the Libretro projects and ecosystem, you can learn more [here](https://retroarch.com/index.php?page=donate).

If you experience problems with this relesase on PCs with older Intel GPUs, check workaround instructions [here](https://forums.libretro.com/t/generic-pc-3-5-not-working/35134).

Happy retro-gaming!
