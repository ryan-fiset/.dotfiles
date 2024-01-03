return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		local commands = require("neo-tree.command")
		require("neo-tree").setup({
			event_handlers = {
				{
					event = "file_opened",
					handler = function(file_path)
						-- auto close
						commands.execute({ action = "close" })
					end,
				},
			},
			vim.keymap.set("n", "<leader>e", "<cmd>Neotree<CR>"),
		})
	end,
}
