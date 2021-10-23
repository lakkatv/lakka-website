---
title: New major release
created_at: '2016-05-03 09:48:47'
author_name: kivutar
kind: article
tags:
 - RPi3
 - Ribbon
 - Services
 - Thumbnails
 - RetroActive
 - Gamegirl
 - Audio
 - FBA
social:
  thumbnail: media/ribbon.png
---

This new major release of Lakka brings a lot of changes on the graphical interface, as well as a better integration of RetroArch with the underlying OS.

The list of change is huge, and this time it is a real step forward in term of user friendliness.

# Animated menu background

![Ribbon](media/ribbon.png)

I've been playing with shaders, and we managed to integrate two animated backgrounds in RetroArch. One of these doesn't work yet on OpenGL ES, and will fallback to the previous one. You can switch between those animations or disable them to show the wallpaper from the **Menu Settings**.

Icons and text shadows have also been added. They can be disabled from the **Menu Settings**. Note they can cause FPS drops in the menu on Raspberry Pi.

# Thumbnails: Boxart, screenshots, and more

![Thumbnails](media/thumbnails.png)

A lot of work has been done on the boxart front. There is now a **Thumbnails Updater** entry in the menu, to download per-system thumbnail packs.

Once downloaded, thumbnails will display in the bottom right corner of your screen.

There are 3 types of thumbnails, and you can switch over those either in the **Menu Settings** or by using the **Y Button** (left) of the RetroPad.

You can find more information about this on our [wiki](https://github.com/libretro/Lakka/wiki/Game-Thumbnails)

# Icon theme switching 

A new icon theme called **RetroActive** created by Chad Margetts is now included. You can switch to this new theme in the **Menu Settings**.

![RetroActive](media/retroactive.png)

This new menu setting also ease theme creation. If you are a designer, you may want to create your own theme.

# Integration with the OS

Our contributor gouchi added the ability to switch the audio device directly from the **Audio Settings**. This new feature is important on PC, where the HDMI audio is not always the default output.

![Audio device](media/audio_device.png)

We also added a **Service Settings** group in the menu. From there, you can enable or disable services like SSH, SAMBA, or Bluetooth.

![Services](media/services.png)

# Bluetooth DualShock 3

The famous PS3 game controller is now easier to use in Lakka. You can now use it wirelessly over bluetooth without having to go through that complex command line pairing anymore. Just enable bluetooth in the services, plug your controller once, wait a few seconds and unplug it. It should automatically pair and control the menu and play games.

We also added support for Chinese clones of the Shanwan family. The Gasia clones are still a work in progress.

# FBA Arcade scanning

![FBA scanning](media/fba_scanning.png)

You can now generate a playlist of your arcade games from the menu, using the regular **Scan Directory** method. It works for FBA, not yet for MAME. We support the FBA ROMset v0.2.97.38.

# Minor changes

 * Cuboxi and Hummingboard builds are no longer broken
 * RetroArch and libretro cores updated
 * Bluetooth and WiFi working on RPi3
 * Database updated (to no-intro 2016-03)

# Gamegirl

![Gamegirl](media/gamegirl.jpg)

The tiny handheld project has made nice progress since our last article. 

We got a partnership with 8bitdo, the famous controller brand. They are going to take care of the buttons and the case. With them on the board, we can be sure that the product will be good ergonomically.

Gamegirl needs contributors. If you are interested, join us on [Discord](<%= @config[:links][:discord] %>)

# Hardware wishlist

I have setup a wishlist to let everybody know what hardware is needed to maintain the project.

We have setup PayPal donations with the agreement of all the other libretro members. This money will be used to buy the hardware on this list.

<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="encrypted" value="-----BEGIN PKCS7-----MIIHNwYJKoZIhvcNAQcEoIIHKDCCByQCAQExggEwMIIBLAIBADCBlDCBjjELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtQYXlQYWwgSW5jLjETMBEGA1UECxQKbGl2ZV9jZXJ0czERMA8GA1UEAxQIbGl2ZV9hcGkxHDAaBgkqhkiG9w0BCQEWDXJlQHBheXBhbC5jb20CAQAwDQYJKoZIhvcNAQEBBQAEgYBNcHrnLDOIbuh80q9kSp2JEACxrKtHftnWnUCOushG3V8CcdX4Ul6OGUMHedMJW+cFd1d+GVkwz2j2T9xh3jhpIERYLFSlVFzicE9i7HL0OxFPPiFQwfLLRNRq00R/Tli7eew25+0yXq1McYqwH+YOfBU9kYAagc8al0D/QujhfDELMAkGBSsOAwIaBQAwgbQGCSqGSIb3DQEHATAUBggqhkiG9w0DBwQI8FUE0MM9qEuAgZCYHwuU/e0xhGamsoDZweoRrIzKkjBUHeToBtZXqEGZmkLWmZYjQ+5OWp6npIn+KVV3nvbgVPkKlw94WpNMnRgjLTGWD7IveP+BHrCPsxyocpFmhohPb0m3B2KYPDFC0CjN5wgF/Gztk3zCkbhhBoB806GnMysFL2xk5EL7NvMklEXourt/7vmf98OQHRKy7vWgggOHMIIDgzCCAuygAwIBAgIBADANBgkqhkiG9w0BAQUFADCBjjELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtQYXlQYWwgSW5jLjETMBEGA1UECxQKbGl2ZV9jZXJ0czERMA8GA1UEAxQIbGl2ZV9hcGkxHDAaBgkqhkiG9w0BCQEWDXJlQHBheXBhbC5jb20wHhcNMDQwMjEzMTAxMzE1WhcNMzUwMjEzMTAxMzE1WjCBjjELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtQYXlQYWwgSW5jLjETMBEGA1UECxQKbGl2ZV9jZXJ0czERMA8GA1UEAxQIbGl2ZV9hcGkxHDAaBgkqhkiG9w0BCQEWDXJlQHBheXBhbC5jb20wgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAMFHTt38RMxLXJyO2SmS+Ndl72T7oKJ4u4uw+6awntALWh03PewmIJuzbALScsTS4sZoS1fKciBGoh11gIfHzylvkdNe/hJl66/RGqrj5rFb08sAABNTzDTiqqNpJeBsYs/c2aiGozptX2RlnBktH+SUNpAajW724Nv2Wvhif6sFAgMBAAGjge4wgeswHQYDVR0OBBYEFJaffLvGbxe9WT9S1wob7BDWZJRrMIG7BgNVHSMEgbMwgbCAFJaffLvGbxe9WT9S1wob7BDWZJRroYGUpIGRMIGOMQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFjAUBgNVBAcTDU1vdW50YWluIFZpZXcxFDASBgNVBAoTC1BheVBhbCBJbmMuMRMwEQYDVQQLFApsaXZlX2NlcnRzMREwDwYDVQQDFAhsaXZlX2FwaTEcMBoGCSqGSIb3DQEJARYNcmVAcGF5cGFsLmNvbYIBADAMBgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBBQUAA4GBAIFfOlaagFrl71+jq6OKidbWFSE+Q4FqROvdgIONth+8kSK//Y/4ihuE4Ymvzn5ceE3S/iBSQQMjyvb+s2TWbQYDwcp129OPIbD9epdr4tJOUNiSojw7BHwYRiPh58S1xGlFgHFXwrEBb3dgNbMUa+u4qectsMAXpVHnD9wIyfmHMYIBmjCCAZYCAQEwgZQwgY4xCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEUMBIGA1UEChMLUGF5UGFsIEluYy4xEzARBgNVBAsUCmxpdmVfY2VydHMxETAPBgNVBAMUCGxpdmVfYXBpMRwwGgYJKoZIhvcNAQkBFg1yZUBwYXlwYWwuY29tAgEAMAkGBSsOAwIaBQCgXTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xNjA1MDMwMDE5MDBaMCMGCSqGSIb3DQEJBDEWBBQQuKKwnf0U11uyakuQNDI18pmPUTANBgkqhkiG9w0BAQEFAASBgCNgp1zi4hsO/jJRdPDF9SwizKmvdpwDKHZZxiqeyOVK1GrK5GpVNj5W1u8wZIkg3YKb2yku626/mgEL1VoZtnKVyjQe9rFdpKKz9C7YYJdOvR2whEcMGdp3s8fIUe5ruVWw6SJKecrrFkwrOEfMIrfb6hPHOMJMjd1+naGk0ExG-----END PKCS7-----
">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_donate_LG.gif" border="0" name="submit" alt="PayPal – The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/fr_FR/i/scr/pixel.gif" width="1" height="1">
</form>

Our github issues are now tagged with a **hardware needed** flag when the resolution is blocked by a lack of hardware.

Thanks for your help! And don't worry, receiving one or two donations don't make us a greedy company, RetroArch and Lakka will always remain free.

