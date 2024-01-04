return {
	"mrcjkb/rustaceanvim",
	event = "BufReadPost",
	version = "^3", -- Recommended
	ft = { "rust" },
	config = function()
		vim.g.rustaceanvim = {
			-- Plugin configuration
			-- tools = {},
			-- LSP configuration
			server = {
				on_attach = function(client, bufnr)
					-- you can also put keymaps in here
					vim.lsp.inlay_hint(bufnr, true)
				end,
				settings = {
					-- rust-analyzer language server configuration
					["rust-analyzer"] = {},
				},
				--   },
				-- DAP configuration
				-- dap = {},
			},
		}
	end,
}
