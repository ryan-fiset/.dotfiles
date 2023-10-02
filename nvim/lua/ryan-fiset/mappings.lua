vim.g.mapleader = " "
map = vim.keymap
cmd = vim.cmd

-- Base vim remaps
map.set("v", "J", ":m '>+1<CR>gv=gv")
map.set("v", "K", ":m '<-2<CR>gv=gv")
map.set("n", "J", "mzJ`z")
map.set("i", "<C-c>", "<Esc>")
map.set("n", "<C-u>", "<C-u>zz")
map.set("n", "<C-d>", "<C-d>zz")

-- Plugin Mappings:
-- Nvim tree
map.set("n", "<leader>e", cmd.NvimTreeToggle)
-- Telescope
local builtin = require('telescope.builtin')
map.set('n', '<leader>ff', builtin.find_files, {})
map.set('n', '<leader>fg', builtin.live_grep, {})
map.set('n', '<leader>fb', builtin.buffers, {})
