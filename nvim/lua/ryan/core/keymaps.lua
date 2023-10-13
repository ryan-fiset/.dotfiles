local map = vim.keymap
local cmd = vim.cmd
vim.g.mapleader = " "

map.set('v', 'J', ":m '>+1<CR>gv=gv")
map.set('v', 'K', ":m '<-2<CR>gv=gv")

map.set('n', 'J', "mzJ`z")
map.set('n', '<C-d>', "<C-d>zz")
map.set('n', '<C-u>', "<C-u>zz")
map.set('n', 'n', "nzzzv")
map.set('n', 'N', "Nzzzv")

map.set('x', '<leader>p', '"_dP')

map.set('n', '<leader>y', '"+y')
map.set('v', '<leader>Y', '"+y')
map.set('n', '<leader>Y', '"+Y')

map.set('i', '<C-e>', '<ESC>')

-- Bufferline
map.set('n', '<C-,>', '<cmd>BufferLineCyclePrev<CR>')
map.set('n', '<C-.>', '<cmd>BufferLineCycleNext<CR>')

-- Nvim Tree
map.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>')


-- Telescope
map.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
map.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
