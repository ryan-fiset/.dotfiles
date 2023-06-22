local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

local text_objects_status, text_objects = pcall(require, "nvim-treesitter/nvim-treesitter-textobjects")
if not text_objects_status then
	return
end

treesitter.setup({
	highlight = {
		enable = true,
	},
	indent = { enable = true },
	autotag = { enable = true },
	ensure_installed = {
		"c",
		"lua",
		"cpp",
		"html",
		"css",
		"make",
		"yaml",
		"toml",
		"json",
		"markdown",
		"latex",
		"gitignore",
		"fish",
		"bibtex",
	},
	auto_install = true,
})
