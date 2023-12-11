local map = vim.keymap
vim.g.mapleader = " "

map.set("n", "<leader>pv", vim.cmd.Ex)

map.set("v", "J", ":m '>+1<CR>gv=gv")
map.set("v", "K", ":m '<-2<CR>gv=gv")

map.set("n", "J", "mzJ`z")
map.set("n", "<C-d>", "<C-d>zz")
map.set("n", "<C-u>", "<C-u>zz")
map.set("n", "n", "nzzzv")
map.set("n", "N", "Nzzzv")

map.set("x", "<leader>p", '"_dP')

map.set("n", "<leader>y", '"+y')
map.set("v", "<leader>Y", '"+y')
map.set("n", "<leader>Y", '"+Y')

map.set("i", "<C-e>", "<ESC>")
