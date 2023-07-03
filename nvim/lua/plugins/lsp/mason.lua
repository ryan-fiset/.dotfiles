local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

local mason_null_ls_setup, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_setup then
	return
end

mason.setup()

mason_lspconfig.setup({
	ensure_installed = {
		"html",
		"cssls",
		"lua_ls",
		"clangd",
		"ltex",
		"rust_analyzer",
		"pyright",
	},
})

mason_null_ls.setup({
	ensure_installed = {
		"rustfmt",
		"stylua",
		"clang-formatter",
		"prettier",
		"mypy",
		"ruff",
		"black",
	},
})
