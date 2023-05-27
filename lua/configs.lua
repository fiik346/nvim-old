require('lualine').setup()
require('nvim-tree').setup()
require('barbar').setup{
	sidebar_filetypes = {
		NvimTree = true,
	}
}

require('gitsigns').setup()

require('autocomplete')
require('lsp')
