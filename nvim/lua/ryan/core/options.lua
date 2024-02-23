-- Set highlight on search
vim.o.hlsearch = false

-- Set tabstop and shiftwidth
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- Make relative line numbers default
vim.o.nu = true
vim.o.relativenumber = true

-- Sync system clipboard with neovim clipboard
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Disable line wrapping
vim.o.wrap = false

-- Add a column for line 80
vim.o.colorcolumn = "80"

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

vim.o.termguicolors = true

vim.o.conceallevel = 1

-- Highlight on yank
local highlight_group =
    vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
