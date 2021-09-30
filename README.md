# Lakka's Website

[![Netlify Status](https://api.netlify.com/api/v1/badges/8c5ce08f-9bbf-46a9-beeb-869680e253ef/deploy-status)](https://app.netlify.com/sites/thirsty-poitras-b9339a/deploys)

## Synopsis

This project is for Lakka's website.

## Development Environment

This website is based on nanoc, a static generator CMS.

Requirements:

- Ruby: 2.0.0 or newer
- Gem Bundler

In order to setup your development environment, run:

    bundle install

### Updating the /doc section

The `/doc` section is generated from the [GitHub wiki of the Lakka project](https://github.com/libretro/Lakka-LibreELEC/wiki). To initialize the content, run:

```
git submodule update --init --remote
```

This will download the current state of the wiki.

### Running Commands

Do not forget to run commands with bundler:

Example:

    bundle exec nanoc #will compile the whole website

    bundle exec guard #starts auto-compilation on disk change

## License

The source files used in this project are licensed under
[GNU General Public License V3](https://www.gnu.org/licenses/gpl.html)

The Generated Website content is licensed under [Creative
Commons Attribution-ShareAlike 4.0 International
License](http://creativecommons.org/licenses/by-sa/4.0/)
