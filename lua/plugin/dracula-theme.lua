return{
	"Mofiqul/dracula.nvim",
	enabled= true,
	-- lazy = false,
	priority = 1000,
	config = function()
		local dracula = require('dracula')
		dracula.setup({
			transparent_bg = false, -- default false

		})
		vim.cmd("colorscheme dracula")
	end
}
