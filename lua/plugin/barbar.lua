return {
	{
		"romgrk/barbar.nvim",
		config = function()
			require("barbar").setup({
				sidebar_filetypes = { 
					NvimTree = true,
				}
			})
		end
	},
}
