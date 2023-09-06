return {
	"nvim-tree/nvim-tree.lua",
	--keys = {
	--  {"<leader>ft:","<cmd>NvimTreeToggle</cr>", desc="Nvim Tree"},
	--},
	config = function()
		require("nvim-tree").setup()
		local api = require("nvim-tree.api")
		vim.keymap.set("n", "<leader>fe",api.tree.toggle)
	end
}
