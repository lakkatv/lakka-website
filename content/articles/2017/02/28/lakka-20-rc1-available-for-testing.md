---
title: Lakka 2.0 RC1 available for testing
created_at: '2017-02-28 12:36:57'
author_name: kivutar
kind: article
tags:
 - RC
 - Odroid C2
 - WeTek Play 2
 - WeTek Core
 - WeTek Hub
 - S805
 - S802
 - S905
 - LibreELEC
 - Netplay
social:
  thumbnail: media/rc1.png
---

During the last two months, we've been busy rebasing Lakka on LibreELEC. It was quite difficult because we didn't want to drop support for any ARM boards, but we finally managed to get it working on time. This new version of Lakka is based on the **LibreELEC 8.0** stable branch and ships **RetroArch 1.4.1**. It is a Release Candidate intended for testers and developers. If you are a beginner Lakka user, it's better to keep using the current stable release until Lakka 2.0 is ready for the masses.

LibreELEC 8.0 is way more up-to-date than our previous OpenELEC 6.0 base. The compatibility with recent PC motherboards, graphic cards, and joypads should be greatly improved. This new LibreELEC base gives us a lot of new builds: **Odroid C2**, **WeTek Play 2**, **WeTek Hub**, and a **VMWare** compatible image. We are also adding support for new amlogic boxes: **S805**, **S802** and **S905**.

![RC1](media/rc1.png)

RetroArch 1.4.1 features an new **intuitive netplay** mode, which doesn't require any configuration, as long as your router supports UPnP. It requires that you use the No-Intro ROMs which was already a requirement to scan your ROMs and use boxarts.

Since it is a Release Candidate, we've not yet updated the links in the installation tutorials nor the documentation pages.

These 2.0 builds are available here [https://le.builds.lakka.tv](https://le.builds.lakka.tv). Testers need to do a clean install from scratch. And bugs can be reported on this [new dedicated tracker](<%= @config[:links][:github] %>/issues). Please avoid feature requests for now, we're focusing on fixing regressions first.

We hope to be able to release this Lakka 2.0 as the new stable version during march. And we will push new release candidates once or twice per week during that time.

Stay tuned, and thank you for your support and encouragement!
