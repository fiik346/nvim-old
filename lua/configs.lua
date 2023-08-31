require('lualine').setup()
require('nvim-tree').setup()
require('barbar').setup{
	sidebar_filetypes = {
		NvimTree = true,
	}
}

require('theme')
require('gitsigns').setup()

require('wilder-config')
require('lsp')
require('formatting')

-- indent
require('indent_blankline').setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}

require('toggleterm').setup()
