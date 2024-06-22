endscroll.nvim
==============
A simple plugin to make Neovim naturally scroll through the end of files. Uses the value of `scrolloff` to continue scrolling as if there were more lines below the last line.

![Example](https://i.imgur.com/vzkoJAA.gif)

Getting started
---------------
### Install

Using [lazy.vim](https://github.com/folke/lazy.nvim):
```lua
{
  "TwoSpikes/endscroll.nvim",
}
```

Using [vim-plug](https://github.com/junegunn/vim-plug):
```vim
Plug 'TwoSpikes/endscroll.nvim'
```

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):
```lua
use 'TwoSpikes/endscroll.nvim'
```

Using [pckr.nvim](https://github.com/lewis6991/pckr.nvim):
```lua
'TwoSpikes/endscroll.nvim'
```

Using [dein](https://github.com/Shougo/dein.vim):
```vim
call dein#add('TwoSpikes/endscroll.nvim')
```

Using [paq-nvim](https://github.com/savq/paq-nvim):
```lua
'TwoSpikes/endscroll.nvim'
```

Using [Pathogen](https://github.com/tpope/vim-pathogen):
```console
$ cd ~/.vim/bundle && git clone https://github.com/TwoSpikes/endscroll.nvim
```

Using Vim built-in package manager (requires Vim v.8.0+) ([help](https://vimhelp.org/repeat.txt.html#packages) or `:h packages`):
```console
$ cd ~/.vim/pack/test/start/ && git clone https://github.com/TwoSpikes/endscroll.nvim
```

### Setup
#### Quick start
Add the following line to your Neovim config

Lua:
```lua
require('endscroll').setup {}
```
Vimscript:
```vim
lua require('endscroll').setup {}
```
#### Settings
These are the default settings. Any changes can be made in the call to `setup`.
```lua
-- default settings
require('endscroll').setup {
  scroll_at_end = true,     -- pressing j on the last line keeps scrolling the screen
  disabled_filetypes = {}   -- list of filetypes for which this extension will be disabled
}
```
