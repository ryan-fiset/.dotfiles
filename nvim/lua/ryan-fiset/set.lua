opt = vim.opt

opt.guicursor = ""

opt.nu = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2 
opt.shiftwidth = 2
opt.expandtab = true

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
vim.opt.signcolumn = "yes"
opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.mapleader = " "
