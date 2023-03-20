require("tokyonight").setup({
	styles = {
		sidebars = "transparent",
		--floats = "transparent",
	},
	transparent= true
})

require('trouble').setup()

require('telescope').setup()

require('toggleterm').setup()

-- Lualine
require("lualine").setup({
	theme = "tokyonight"
})

-- Nvim tree setup
require('configs.tree')

-- Set up nvim-cmp.
--require('configs.lsp')

-- COC Configs
require('configs.coc')
