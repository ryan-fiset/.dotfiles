vim.g.mapleader = " "
map = vim.keymap
cmd = vim.cmd

map.set("n", "<leader>pv", cmd.Ex)

map.set("v", "J", ":m '>+1<CR>gv=gv")
map.set("v", "K", ":m '<-2<CR>gv=gv")

map.set("n", "J", "mzJ`z")
map.set("n", "<C-d>", "<C-d>zz")
map.set("n", "<C-u>", "<C-u>zz")
map.set("n", "n", "nzzzv")
map.set("n", "N", "nzzzv")

map.set("x", "<leader>p", "\"_dP")

map.set("i", "<C-c>", "<Esc>")
