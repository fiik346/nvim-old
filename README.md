# Simple Neovim Configurations

This file is my neovim configurations.

## Features
- [x] Dracula Themes
- [x] Autocomplete using wilder
- [x] Code correction using nvim-cmp and lsp
- [x] Telescope
- [x] Buffer management using barbar
- [x] Beautiful status line using lualine

## Requirements
- vim-plug
- treesitter

## How to Install?
- First, you need Vim Plug for plugin management, and clone this repo to your neovim config path, ex: `~/.config/nvim`.
- Second, install all plugin using command `:PlugInstall` in your neovim interface
- Third, install `typescript-language-server` globally using npm, yarn or pnpm
- Fourth, install your programming language using command `:TSInstall [language]`, for example `tsx`, `javascript`, `php`. This is optional but recomended.

That's all.

For best terminal, you can using kitty.
