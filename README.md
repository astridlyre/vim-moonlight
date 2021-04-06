# Moonlight

_moonlight_ is a dark color scheme for Vim and Neovim.

Be aware, the _moonlight_ color scheme does change from time to
time, primarily with regard to language and plugin theming.

## Color Palette

![palette](https://raw.githubusercontent.com/astridlyre/vim-moonlight/main/misc/moonlight-palette.png)

## Screenshots

### Go

<img width="600" alt="go" src="https://raw.githubusercontent.com/astridlyre/vim-moonlight/main/misc/go.png">

### JavaScript

<img width="600" alt="javascript" src="https://raw.githubusercontent.com/astridlyre/vim-moonlight/main/misc/javascript.png">

### Bash

<img width="600" alt="bash" src="https://raw.githubusercontent.com/astridlyre/vim-moonlight/main/misc/bash.png">

The font in use is [Iosevka](https://typeof.net/Iosevka/).

## Languages explicitly styled

- All Neovim Treesitter highlighted-languages
- C/C++
- Clojure
- CoffeeScript
- Crystal
- Elixir
- Elm
- Dart
- Go
- Haskell
- Java
- JavaScript
- Lua
- Markdown
- PHP
- PureScript
- Python
- Ruby
- Rust
- Scala
- Shell
- TypeScript

## Plugins explicity styled

- [ALE](https://github.com/w0rp/ale)
- [barbar.nvim](https://github.com/romgrk/barbar.nvim)
- [BufExplorer](https://github.com/jlanzarotta/bufexplorer)
- [clever-f](https://github.com/rhysd/clever-f.vim)
- [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
- [fern.vim](https://github.com/lambdalisue/fern.vim)
- [fzf.vim](https://github.com/junegunn/fzf.vim)
- [GitGutter](https://github.com/airblade/vim-gitgutter)
- [indentLine](https://github.com/Yggdroot/indentLine) (please set `let g:indentLine_setColors = 0` in your _vimrc_)
- [Neomake](https://github.com/neomake/neomake)
- [NERDTree](https://github.com/scrooloose/nerdtree)
- [Signify](https://github.com/mhinz/vim-signify)
- [Tagbar](https://github.com/majutsushi/tagbar)
- [vimfiler](https://github.com/Shougo/vimfiler.vim)

## Installation

Use your favoured plugin manager to install **astridlyre/vim-moonlight** then
set the colorscheme in your _vimrc_ file.

If using [vim-plug](https://github.com/junegunn/vim-plug) do the following:

1. Add `Plug 'astridlyre/vim-moonlight'` to your _vimrc_
2. Run `:PlugInstall`
3. Add `colorscheme moonlight` to your _vimrc_, make sure this line appears
   **after** the _Plug_ declaration.

## Status line

The _moonlight_ color scheme supports
[lightline.vim](https://github.com/itchyny/lightline.vim). To enable the
_moonlight_ lightline colorscheme, after the _lightline.vim_ plugin has been
installed, please add the following to your _vimrc_:

```viml
let g:lightline = { 'colorscheme': 'moonlight' }
```

The _moonlight_ color scheme also supports
[vim-airline](https://github.com/vim-airline/vim-airline). With modern versions
of _vim-airline_ the _moonlight_ theme will be automatically loaded.

## Options

The `g:moonlightCursorColor` option specifies whether to color the cursor or not.
By default the cursor will **NOT** be colored. If you prefer a colored cursor
then add the following to your _vimrc_:

```viml
let g:moonlightCursorColor = 1
```

The `g:moonlightTerminalColors` option specifies whether to use the moonlight color
palette in `:terminal` windows when `termguicolors` is set. By default this
option is **enabled**. If you prefer not to use the moonlight color palette for
the first 16 terminal colors then add the following to your _vimrc_:

```viml
let g:moonlightTerminalColors = 0
```

The `g:moonlightUnderlineMatchParen` option specifies whether to underline
matching parentheses. By default this option is **disabled**. If you want to
underline matching parentheses then add the following to your _vimrc_:

```viml
let g:moonlightUnderlineMatchParen = 1
```

The `g:moonlightUndercurls` option specifies whether to use undercurls for
spelling and linting errors in GUI versions of Vim, including terminal Vim with
`termguicolors` set. By default this option is **enabled**. If you do not like
the appearance of undercurls then add the following to your _vimrc_:

```viml
let g:moonlightUndercurls = 0
```

The `g:moonlightItalics` option specifies whether to use italics for comments and
certain HTML elements in GUI versions of Vim. By default this option is
**enabled**. If you do not like the appearance of italics then add the following
to your _vimrc_:

```viml
let g:moonlightItalics = 0
```

The `g:moonlightTransparent` option specifies whether the background is transparent, for
users preferring a transparent terminal look. By default this option is **disabled**. To
enable transparent background, add the following to your _vimrc_:

```viml
let g:moonlightTransparent = 1
```

## True Color Terminals

Many modern terminals support [24-bit true
colors](https://gist.github.com/XVilka/8346728). Current versions of Vim and
Neovim, on such terminals, support true colors when `set termguicolors` is
enabled.

A list of prevalent terminals that support true colors:

- [iTerm2](http://www.iterm2.com)
- [GNOME Terminal](https://wiki.gnome.org/Apps/Terminal)
- [Windows Terminal](https://github.com/Microsoft/Terminal)
- [Alacritty](https://github.com/alacritty/alacritty)
- [kitty](https://sw.kovidgoyal.net/kitty/index.html)
- [konsole](https://konsole.kde.org)
- [PuTTY](https://putty.org)
- [mintty](https://mintty.github.io)

On terminals that support true colors, and when `termguicolors` is set, the
_moonlight_ color scheme will not require any terminal configuration to emit the
correct theme colors.

For the true color _moonlight_ color scheme to display correctly inside _tmux_
the following setting will usually be required in _~/.tmux.conf_:

```
set -ga terminal-overrides ',xterm-256color:Tc'
```

Vim, inside _tmux_, will also require the following setting
be added to _vimrc:_

```viml
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
```

## Terminal Themes

A collection of _moonlight_-flavoured terminal themes are provided for those using
_moonlight_ with `termguicolors` (`cterm` users should refer to the next section
and not use these terminal themes):

- _Gnome Terminal_ users can run
  [this](terminal_themes/gnome-terminal-moonlight.sh) script to create a _Moonlight_
  profile. Before executing the script, please install the `dconf-cli` command
  line utility for modern versions of Gnome (3.28 and later), for example `sudo apt install dconf-cli`. After executing the script, please set the _cursor_
  and _selection_ colors by hand, with the appropriate color values listed
  above, in `Preferences` / `moonlight` / `Colors`.

- [Alacritty](https://github.com/alacritty/alacritty) users can copy
  [this](terminal_themes/alacritty.yml) theme into their `alacritty.yml`
  configuration.

- [kitty](https://sw.kovidgoyal.net/kitty) users can use
  [this](terminal_themes/kitty-theme.conf) theme.

## 256 Color Terminals

The _moonlight_ color scheme, when used absent `termguicolors`, **requires** the
host terminal be configured with a specific color palette. In that case the
legacy _moonlight_ `cterm` 256 color terminal theme will be used.

:bell: Nowadays it is strongly recommended to use a true color terminal with a
modern version of Vim or Neovim with `termguicolors` set.

If that is not possible, then the [terminal
emulator](https://en.wikipedia.org/wiki/Terminal_emulator) must be configured
for 256 colors, which usually means setting the terminal's type to
**xterm-256color**, or **screen-256color** when used inside
[tmux](https://tmux.github.io/).

The terminal should then be configured with the following _moonlight_ colors:

| Type           | Category        | Value     | Color                                                              |
| -------------- | --------------- | --------- | ------------------------------------------------------------------ |
| Background     | Background      | `#181819` | ![background](https://via.placeholder.com/32/181819/000000?text=+) |
| Foreground     | Foreground      | `#b2b2b2` | ![background](https://via.placeholder.com/32/b2b2b2/000000?text=+) |
| Bold           | Bold            | `#eeeeee` | ![background](https://via.placeholder.com/32/eeeeee/000000?text=+) |
| Cursor         | Cursor          | `#9e9e9e` | ![background](https://via.placeholder.com/32/9e9e9e/000000?text=+) |
| Cursor Text    | Cursor Text     | `#181819` | ![background](https://via.placeholder.com/32/181819/000000?text=+) |
| Selection      | Selection       | `#b2ceee` | ![background](https://via.placeholder.com/32/b2ceee/000000?text=+) |
| Selection Text | Selection Text  | `#181819` | ![background](https://via.placeholder.com/32/181819/000000?text=+) |
| Color 1        | Black (normal)  | `#373c40` | ![background](https://via.placeholder.com/32/373c40/000000?text=+) |
| Color 2        | Red (normal)    | `#D1616B` | ![background](https://via.placeholder.com/32/D1616B/000000?text=+) |
| Color 3        | Green (normal)  | `#79813E` | ![background](https://via.placeholder.com/32/79813E/000000?text=+) |
| Color 4        | Yellow (normal) | `#DDC18F` | ![background](https://via.placeholder.com/32/DDC18F/000000?text=+) |
| Color 5        | Blue (normal)   | `#617E9C` | ![background](https://via.placeholder.com/32/617E9C/000000?text=+) |
| Color 6        | Purple (normal) | `#984673` | ![background](https://via.placeholder.com/32/984673/000000?text=+) |
| Color 7        | Cyan (normal)   | `#6CCEB8` | ![background](https://via.placeholder.com/32/6CCEB8/000000?text=+) |
| Color 8        | White (normal)  | `#b2b2b2` | ![background](https://via.placeholder.com/32/b2b2b2/000000?text=+) |
| Color 9        | Black (bright)  | `#7c8f8f` | ![background](https://via.placeholder.com/32/f09479/000000?text=+) |
| Color 10       | Red (bright)    | `#C33552` | ![background](https://via.placeholder.com/32/ff5189/000000?text=+) |
| Color 11       | Green (bright)  | `#8DA54E` | ![background](https://via.placeholder.com/32/36c692/000000?text=+) |
| Color 12       | Yellow (bright) | `#E8F198` | ![background](https://via.placeholder.com/32/bfbf97/000000?text=+) |
| Color 13       | Blue (bright)   | `#367CA8` | ![background](https://via.placeholder.com/32/78c2ff/000000?text=+) |
| Color 14       | Purple (bright) | `#D19FA5` | ![background](https://via.placeholder.com/32/ae81ff/000000?text=+) |
| Color 15       | Cyan (bright)   | `#36c692` | ![background](https://via.placeholder.com/32/85dc85/000000?text=+) |
| Color 16       | White (bright)  | `#D0BCBB` | ![background](https://via.placeholder.com/32/e2637f/000000?text=+) |

## License

[MIT](https://opensource.org/licenses/MIT)
