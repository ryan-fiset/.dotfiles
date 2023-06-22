-- Autocommand that reloads neovim whenever you save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim") -- Packer

	-- Appearence
	use("morhetz/gruvbox") -- Colorscheme
	use("nvim-lualine/lualine.nvim") -- Better status line
	use("lewis6991/gitsigns.nvim") -- Git status signs for tab bar
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- Better lsp UI
	use("onsails/lspkind.nvim") -- vscode like symbols for lsp completion

	-- Functionality
	use("rust-lang/rust.vim") -- Better rust functionality
	use("christoomey/vim-tmux-navigator") -- TMUX and split window navigation
	use("szw/vim-maximizer") -- Maximized and restores current window
	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use("windwp/nvim-autopairs") -- Auto close brackets, quotes, etc.
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- Auto tag for html
	use("tpope/vim-surround") -- Swap or remove surrounding brackets, quotes, etc.
	use("vim-scripts/ReplaceWithRegister") -- Better text replacement
	use("numToStr/Comment.nvim") -- Better commenting
	-- File explorer
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
	})
	use("romgrk/barbar.nvim") -- Tab bar
	-- Fuzzy finding
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x", requires = { "nvim-lua/plenary.nvim" } })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- Makes telescope run faster
	-- LSP
	use("williamboman/mason.nvim") -- Managing & installing lsp servers
	use("neovim/nvim-lspconfig") -- Configuring lsp servers
	use("williamboman/mason-lspconfig") -- Handle mason and lspconfig working together
	use("jose-elias-alvarez/null-ls.nvim") -- Formatting and linting
	use("jayp0521/mason-null-ls.nvim") -- Handle mason and null-ls working together
	use("hrsh7th/cmp-nvim-lsp") -- LSP completion
	use("simrat39/rust-tools.nvim") -- Better rust LSP
	-- Autocomplete
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	-- Snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
	-- Lua
	use({
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup({})
		end,
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
