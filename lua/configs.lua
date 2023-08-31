require('lualine').setup()
require('nvim-tree').setup()
require('barbar').setup{
	sidebar_filetypes = {
		NvimTree = true,
	}
}

-- require('theme')
require('gitsigns').setup()

require('wilder-config')
require('lsp')
require('formatting')

require('toggleterm').setup()

require('indent')
