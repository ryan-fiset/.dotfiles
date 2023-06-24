vim.g.mapleader = " "

local keymap = vim.keymap

-- General keymaps

-- Quality of life
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>h", ":nohl<CR>") -- Remove highlights
keymap.set("n", "x", '"_x') -- Using x to remove a character does not add it to yank register
keymap.set("n", "=", "<C-a>") -- Increment number
keymap.set("n", "-", "<C-x>") -- Decrement number

-- Window spliting
keymap.set("n", "<leader>sv", "<C-w>v") -- Split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- Split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- Make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- Close current split window

-- Plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>f", ":NvimTreeFocus<CR>")

-- barbar
keymap.set("n", "<leader>,", ":BufferPrevious<CR>")
keymap.set("n", "<leader>.", ":BufferNext<CR>")
keymap.set("n", "<leader><", ":BufferMovePrevious<CR>")
keymap.set("n", "<leader>>", ":BufferMoveNext<CR>")
keymap.set("n", "<leader>q", ":BufferClose<CR>")

-- telescope
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", builtin.find_files, {})
keymap.set("n", "<leader>fg", builtin.live_grep, {})
keymap.set("n", "<leader>fb", builtin.buffers, {})
keymap.set("n", "<leader>fh", builtin.help_tags, {})
