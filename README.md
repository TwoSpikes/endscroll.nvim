endscroll.nvim
==============
A simple plugin to make Neovim naturally scroll through the end of files. Uses the value of `scrolloff` to continue scrolling as if there were more lines below the last line.

![Example](https://i.imgur.com/vzkoJAA.gif)

Getting started
---------------
### Install

<details><summary>
Using [lazy.vim](https://github.com/folke/lazy.nvim):
</summary>
```lua
{
  "TwoSpikes/endscroll.nvim",
}
```
</details>

<details><summary>
Using [vim-plug](https://github.com/junegunn/vim-plug):
</summary>
```vim
Plug 'TwoSpikes/endscroll.nvim'
```
</details>

<details><summary>
Using [packer.nvim](https://github.com/wbthomason/packer.nvim):
</summary>
```lua
use 'TwoSpikes/endscroll.nvim'
```
</details>

<details><summary>
Using [pckr.nvim](https://github.com/lewis6991/pckr.nvim):
</summary>
```lua
'TwoSpikes/endscroll.nvim'
```
</details>

<details><summary>
Using [dein](https://github.com/Shougo/dein.vim):
</summary>
```vim
call dein#add('TwoSpikes/endscroll.nvim')
```
</details>

<details><summary>
Using [paq-nvim](https://github.com/savq/paq-nvim):
</summary>
```lua
'TwoSpikes/endscroll.nvim'
```
</details>

<details><summary>
Using [Pathogen](https://github.com/tpope/vim-pathogen):
</summary>
```console
$ cd ~/.vim/bundle && git clone https://github.com/TwoSpikes/endscroll.nvim
```
</details>

<details><summary>
Using Vim built-in package manager (requires Vim v.8.0+) ([help](https://vimhelp.org/repeat.txt.html#packages) or `:h packages`):
</summary>
```console
$ cd ~/.vim/pack/test/start/ && git clone https://github.com/TwoSpikes/endscroll.nvim
```
</details>

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
