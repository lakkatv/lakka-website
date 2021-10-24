---
title: Experimental Vulkan and X11 Lakka 2.2 builds for x86_64
created_at: '2019-01-16 20:00:00'
author_name: mlnlbrt
kind: article
tags:
 - Experimental
 - Vulkan
 - X11
social:
  thumbnail: media/gt.png
---

So far nvidia PC GPUs were supported by Lakka through nouveau open-source drivers.

Unfortunately, these drivers are nowhere as complete as Intel or AMD ones, so while having some advantages (DRM/KMS support, no X Server) this approach has major drawbacks, for example:

  - poor 3D performance
  - no support for recent GPUs
  - no Vulkan

Because of the above, PCs with nvidia GPUs were not a good target for Lakka. To overcome the limitations and unleash full potential of these GPUs, the following new experimental builds of Lakka for x86_64 are now available from [here](https://le.builds.lakka.tv/exp/):

## Generic_VK_nvidia

Vulkan-only build which uses **VK_KHR_display** extension, implemented in the vendor proprietary driver. This is similar to DRM/KMS, a direct-to-display approach, where input lag should be minimal. As for now, this is the only Lakka variant with Vulkan backends for Beetle-PSX, Dolphin, Parallel-N64 or PPSSPP cores enabled, so you can enjoy features like recently added SSAA option in Beetle-PSX and low-level N64 emulation.

![Beetle-PSX SSAA feature on Vulkan](media/gt.png)

![Beetle-PSX SSAA feature on Vulkan](media/sf.png)

![Beetle-PSX SSAA feature on Vulkan](media/wout.png)

Due to lack of OpenGL this build does not include GL-only cores. It should work with all Vulkan-capable nvidia GPUs supported by 390.42 driver.

## Generic_X11_nvidia

Basically, this is a Generic x86_64 Lakka build with proprietary X11 drivers and X Server, so it offers better GPU support at cost of possibly higher input lag. No Vulkan yet.

This build should work with all GPU supported by 390.42 driver and legacy 340.106 driver.

## Contributing and testing

Please keep in mind these are experimental builds kept outside main repository in a [fork](https://github.com/mlnlbrt/Lakka-LibreELEC/tree/master-nv-vk+x11).
Enjoy and feel free to submit issues [here](https://github.com/mlnlbrt/Lakka-LibreELEC/issues).
