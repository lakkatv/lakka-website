---
title: New features in RetroArch
created_at: '2015-07-04 10:56:12'
author_name: kivutar
kind: article
tags:
 - RetroArch
 - Translations
 - Scanning
 - Playlists
 - Database
 - Boxarts
 - Dynamic Backgrounds
---

In this article, I will talk about the new features introduced in RetroArch during the last few weeks. We already posted some videos about it, so if you're following us on social network you will find nothing new in this article, but I thought it would be nice to keep a trace of this on the blog. This new version of RetroArch is not yet included in Lakka because some of those functionnalities still need polishing. But we will upgrade the package as soon as they become mature.

# GUI Translations

The menu now supports a minimalist translation system.

<iframe width="560" height="315" src="https://www.youtube.com/embed/tZB3frNuHeA" frameborder="0" allowfullscreen></iframe>

There are already some european language available in the list, such as French, German, Portuguese, Dutch, and soon we will get Italian and Esperanto. Unicode is not yet possible, so we won't get Japanese or Chinese translations yet.

# Per system playlists

The databases of OpenEMU have been converted and imported in RetroArch. This database system is read only, but very portable, compact and fast. Each entry contains the checksum of the corresponding ROM, which allows scanning your ROM collection.

<iframe width="560" height="315" src="https://www.youtube.com/embed/LTuiq-bKsts" frameborder="0" allowfullscreen></iframe>

Scanning is still a work in progress, it's not yet recursive, and does not work yet on CDs or arcade ROMs. But give it some more time and it will become very nice. It produces some static playlists, per system, in place of the old per core approach. So we can finally browser our Master System games and Megadrive games independantly like it has been requested by so many users.

# Dynamic backgrounds

This feature allow you to supply a folder containing backgrounds for each system.

<iframe width="560" height="315" src="https://www.youtube.com/embed/oV1VoeZvWR8" frameborder="0" allowfullscreen></iframe>

Those backgrounds are loaded in a non blocking way bu the menu, and will change on the fly as you are browsing horizontaly. There are already 2 or 3 themes available in the retroarch-assets repo:

 * Bichromatic pads: based on our monochrome icons are the flatui color palette
 * EmulationStation Blured: the blured background of EmulationStation 2.x
 * Posterized Consoles: based on photos of the emulated consoles, posterized and colored

# Boxarts

Works the same as dynamic backgrounds, but will display Box Arts of the current ROM when you're browsing vertically.

<iframe width="560" height="315" src="https://www.youtube.com/embed/gQ20ApCqjQc" frameborder="0" allowfullscreen></iframe>

The nonblocking image loader does not allow us to get the image dimensions, and the only supported format for now is PNG. For these reasons, this feature is very experimental and it's not yet worth it to write a scrapper. But I still prototyped one quickly in perl for testing.

