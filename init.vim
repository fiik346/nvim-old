call plug#begin()
	Plug 'junegunn/vim-easy-align'
	Plug 'https://github.com/junegunn/vim-github-dashboard.git'

	" Tokyo Night Theme
	Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

	" Troubleshoot
	Plug 'folke/trouble.nvim'

	"LSP
	"Plug 'neovim/nvim-lspconfig'
	
	" Treesitter
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	
	" Telescope
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	
	"Nvim tree
	Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
	Plug 'nvim-tree/nvim-tree.lua'
	
	" Ultisnps
	"Plug 'SirVer/ultisnips'

	" Nvim CMP
	"Plug 'hrsh7th/cmp-nvim-lsp'
	"Plug 'hrsh7th/cmp-buffer'
	"Plug 'hrsh7th/cmp-path'
	"Plug 'hrsh7th/cmp-cmdline'
	"Plug 'hrsh7th/nvim-cmp'
	"Plug 'quangnguyen30192/cmp-nvim-ultisnips'
	
	" COC Nvim
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	
	" Comment Plugin 
	Plug 'preservim/nerdcommenter'

	" Terminal
	Plug 'akinsho/toggleterm.nvim'

	" Barbar
	Plug 'romgrk/barbar.nvim'

	" Lualine
	Plug 'nvim-lualine/lualine.nvim'
call plug#end()

lua require('configs.taufik')

set nu tabstop=2 shiftwidth=2
colorscheme tokyonight
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
