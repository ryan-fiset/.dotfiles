return {
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	{ "numToStr/Comment.nvim", opts = {} }, -- Comment out lines with gc
	{ -- Add indentation guides on blanklines
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			exclude = {
				buftypes = {
					"nofile",
					"terminal",
				},
				filetypes = {
					"dashboard",
					"help",
				},
			},
		},
	},
	{ -- Adds git related signs to the gutter, as well as utilities for managing changes
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
	},
	-- { -- See keybinds
	-- 	"folke/which-key.nvim",
	-- 	event = "VimEnter",
	-- 	config = function()
	-- 		require("which-key").setup()
	--
	-- 		-- Document existing key chains
	-- 		require("which-key").register({
	-- 			["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
	-- 			["<leader>d"] = { name = "[D]ocument", _ = "which_key_ignore" },
	-- 			["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
	-- 			["<leader>s"] = { name = "[S]earch", _ = "which_key_ignore" },
	-- 			["<leader>w"] = { name = "[W]orkspace", _ = "which_key_ignore" },
	-- 			["<leader>t"] = { name = "[T]oggle", _ = "which_key_ignore" },
	-- 			["<leader>h"] = { name = "Git [H]unk", _ = "which_key_ignore" },
	-- 		})
	-- 		-- visual mode
	-- 		require("which-key").register({
	-- 			["<leader>h"] = { "Git [H]unk" },
	-- 		}, { mode = "v" })
	-- 	end,
	-- },
	{ -- Add highlighting to comments starting with TODO, NOTE, etc
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{ -- Navigate nvim and tmux together
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
		},
	},
	{ -- Autopair brackets and quotes
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{ -- Opening dashboard
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({
				-- config
				theme = "hyper",
				config = {
					week_header = {
						enable = true,
					},
					shortcut = {
						{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
					},
				},
			})
		end,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
	{ -- Add/Change/Delete delimiters easily
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
}
