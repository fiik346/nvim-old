vim.cmd("set nu tabstop=2 shiftwidth=2")
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

vim.g.mapleader = " "

require("config.lazy")
