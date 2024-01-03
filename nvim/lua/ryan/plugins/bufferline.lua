return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup()
		vim.keymap.set("n", "<C-,>", "<cmd>bprevious<CR>")
		vim.keymap.set("n", "<C-.>", "<cmd>bnext<CR>")
		vim.keymap.set("n", "<C-c>", "<cmd>bdelete<CR>")
	end,
}
