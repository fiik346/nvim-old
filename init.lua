vim.cmd("set nu tabstop=2 shiftwidth=2")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({

	--- Nvim Tree (file manager)
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",

	-- Treesitter
	"nvim-treesitter/nvim-treesitter",

	-- Barbar
	"lewis6991/gitsigns.nvim",
	"romgrk/barbar.nvim",

	--- lualine
	"nvim-lualine/lualine.nvim",
	"jdhao/better-escape.vim",
	"Mofiqul/dracula.nvim",
	"gelguy/wilder.nvim",

	-- LSP Config
	"neovim/nvim-lspconfig",

	-- CMP
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/nvim-cmp",
	
	-- utilsinp and cmp
	"SirVer/ultisnips",
	"quangnguyen30192/cmp-nvim-ultisnips",

	-- Comment Command
	"tpope/vim-commentary",

	-- Better Escape
	"jdhao/better-escape.vim",

	-- Telescope
	 "nvim-lua/plenary.nvim",
	 "nvim-telescope/telescope.nvim",

	 -- Indent
	 "lukas-reineke/indent-blankline.nvim",

	 -- ToggleTerm (terminal)
	 "akinsho/toggleterm.nvim"

})

require("configs")
