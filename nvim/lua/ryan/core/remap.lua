local map = vim.keymap
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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

map.set("n", "-", "<cmd>split<CR>")
map.set("n", "|", "<cmd>vs<CR>")

-- Diagnostic keymaps
map.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
map.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
map.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
map.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
