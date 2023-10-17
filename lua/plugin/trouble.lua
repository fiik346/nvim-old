return {
 "folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		position = "bottom"
	},
	config = function()
		local trouble = require("trouble")
		vim.keymap.set("n", "<leader>xt", function() trouble.toggle()end)
	end
}
