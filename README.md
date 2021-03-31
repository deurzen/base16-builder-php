# Concrete usage and installation
1. place colorscheme with {scheme_name}.yaml in root in separate repo
2. add repo to sources/schemes/list.yaml
3. php builder.php update && php builder.php
4. assert {confdir}/base16-shell symlink is in place
5. assert {nvimdir}/plug/base16-vim symlink is in place

# Color meanings

- base00 = black
- base01 = dark3
- base02 = dark2
- base03 = dark1
- base04 = light1
- base05 = light2
- base06 = light3
- base07 = white
- base08 = red
- base09 = orange
- base0A = yellow
- base0B = green
- base0C = aqua
- base0D = blue
- base0E = purple
- base0F = brown

and

- base00 - Default Background
- base01 - Lighter Background (Used for status bars, line number and folding marks)
- base02 - Selection Background
- base03 - Comments, Invisibles, Line Highlighting
- base04 - Dark Foreground (Used for status bars)
- base05 - Default Foreground, Caret, Delimiters, Operators
- base06 - Light Foreground (Not often used)
- base07 - Light Background (Not often used)
- base08 - Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
- base09 - Integers, Boolean, Constants, XML Attributes, Markup Link Url
- base0A - Classes, Markup Bold, Search Text Background
- base0B - Strings, Inherited Class, Markup Code, Diff Inserted
- base0C - Support, Regular Expressions, Escape Characters, Markup Quotes
- base0D - Functions, Methods, Attribute IDs, Headings
- base0E - Keywords, Storage, Selector, Markup Italic, Diff Changed
- base0F - Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>



# Base16 Builder PHP
An example PHP implementation of a base16 builder that follows the conventions described at https://github.com/chriskempson/base16.
Requires PHP 5.3 or greater.

**This is an early release and is likely to change.** However, it is already being used to generate the themes for [Base16 Vim](https://github.com/chriskempson/base16-vim), [Base16 Textmate](https://github.com/chriskempson/base16-textmate), [Base16 Shell](https://github.com/chriskempson/base16-shell) and [Base16 HTML Previews](https://github.com/chriskempson/base16-html-previews).

## Installation

    git clone https://github.com/chriskempson/base16-builder-php
    cd base16-builder-php
    composer install

## Usage

    php builder.php update
Updates all scheme and template repositories as defined in `schemes.yaml` and `templates.yaml`.

    php builder.php
Build all templates using all schemes

## Why PHP?
It's easy to read PHP and this Base16 Builder is not meant to be the defacto CLI builder app but serves as a simple working reference application from which others can build Base16 Builders in languages better suited to their needs.
