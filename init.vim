set nu tabstop=2 shiftwidth=2

call plug#begin()

	" Treesitter
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	
	" Icons
	Plug 'nvim-tree/nvim-web-devicons'

	" Nvim Tree
	Plug 'nvim-tree/nvim-tree.lua'

	" Barbar
	Plug 'lewis6991/gitsigns.nvim'
	Plug 'romgrk/barbar.nvim'

	" Comment
	Plug 'tpope/vim-commentary'

	" Lualine
	Plug 'nvim-lualine/lualine.nvim'

	" Better Escape
	Plug 'jdhao/better-escape.vim'

	" Wilder
	if has('nvim')
		function! UpdateRemotePlugins(...)
			" Needed to refresh runtime files
			let &rtp=&rtp
			UpdateRemotePlugins
		endfunction

		Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
	else
		Plug 'gelguy/wilder.nvim'

		" To use Python remote plugin features in Vim, can be skipped
		Plug 'roxma/nvim-yarp'
		Plug 'roxma/vim-hug-neovim-rpc'
	endif

	" Telescope
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }

	" Dracula Color
	Plug 'Mofiqul/dracula.nvim'

	" LSP and CMP

	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'

	" For vsnip users.
	" Plug 'hrsh7th/cmp-vsnip'
	" Plug 'hrsh7th/vim-vsnip'

	" For luasnip users.
	Plug 'L3MON4D3/LuaSnip'
	Plug 'saadparwaiz1/cmp_luasnip'

	" For ultisnips users.
	" Plug 'SirVer/ultisnips'
	" Plug 'quangnguyen30192/cmp-nvim-ultisnips'

	" For snippy users.
	" Plug 'dcampos/nvim-snippy'
	" Plug 'dcampos/cmp-snippy'

	Plug 'jose-elias-alvarez/null-ls.nvim'


	" Indent
	Plug 'lukas-reineke/indent-blankline.nvim'

	" ToggleTerm
	Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

call plug#end()

lua << END
	require('configs')
END
