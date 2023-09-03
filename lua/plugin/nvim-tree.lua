return {
	"nvim-tree/nvim-tree.lua",
	--keys = {
	--  {"<leader>ft:","<cmd>NvimTreeToggle</cr>", desc="Nvim Tree"},
	--},
	config = function()
		require("nvim-tree").setup()
	end
}
