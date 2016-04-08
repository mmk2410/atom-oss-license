# atom-oss-license

A simple package to add a OSS license to your file. It is inspired by atom-license and license-plus, but complete rewritten. It has no deprecations, includes **48 Licenses** and a few features for customizing the license.

![Screenshot](https://marcel-kapfer.de/res/img/atom-oss-license.png)

This is a copy of git.mmk2410.org/atom-oss-license/

## Usage

`ctlr+shift+P` (Windows and Linux) / `cmd+shit+P` (Mac)

Search for **License** and choose one you like

## Copyright Line

This feature is enabled by default, but you can disable it in the package settings and with *License: Toggle Copyright Line* in the command palette.

The Copyright Line looks like this:

```COPYRIGHT (c) <YEAR> <NAME>```

The package automatically inserts the current year and you can set the name in the package settings.

## Additional Text

This feature is disabled by default, but you can enable it in the package settings and with *License: Toggle Header* in the command palette.

If you wanna add an addtional text (e.g. an Ascii art) you have to save this text in a file and enter the absolute path in the package settings.

## Licenses

The following licenses are included:

 - MIT License
 - Apache License
 - Artistic License
 - BSD ISC License
 - BSD v2 License
 - BSD v3 License
 - CCO License
 - Eclipse License
 - GPL v2 License
 - GPL v3 License
 - GPL Affero v3 License
 - LGPL v2 License
 - LGPL v3 License
 - Mozilla License
 - The Unlicense
 - Academic Free License
 - Apple Public Source 2 License
 - Boost Software License
 - CeCILL License
 - Common Develpment and Distribution License (CDDL)
 - Common Public License
 - Cryptix General License
 - Educational Community License
 - Eiffel Project Public License
 - IBM Public License
 - Intel Open Source License
 - LaTeX Project Public License
 - Microsoft Public License
 - Microsoft Reciprocal License
 - Netscape Public License
 - Open Software License
 - OpenSSL License
 - PHP License
 - Python Software Foundation License
 - Q Public License
 - SUN Industry Standards License
 - SUN Public License
 - W3C License
 - Do What the Fuck You Want to Public License (WTFPL)
 - xFree86 License
 - zlib/libpng License
 - Zope Public License
 - Berkeley Database License
 - SIL Open Font License (OFL)
 - Creative Commons 4.0 BY License
 - Creative Commons 4.0 BY-SA License
 - Open Recipe License
 - No License (which adds just a copyright line and an additional text if enabled)

## Contributing

Although you can contribute using GitHub I would prefer it, if you would use the repo at git.mmk2410.org/atom-oss-license/

For contributing on git.mmk2410.org read the contributing guidlines at https://marcel-kapfer.de/contribute/

### Useful snippets for contributors

```
'.source.coffee':
  'license':
    'prefix': 'license'
    'body': """
      $1: ->
        @addLicense('$1')

    """
```
