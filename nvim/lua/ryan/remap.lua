map = vim.keymap
cmd = vim.cmd

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

map.set('n', '<leader>f', function ()
  vim.lsp.buf.format()
end)

-- Plugin maps and remaps

-- Telescope mappings
local builtin = require('telescope.builtin')
map.set('n', '<leader>ff', builtin.find_files, {})
map.set('n', '<leader>fb', builtin.buffers, {})
map.set('n', '<leader>fh', builtin.help_tags, {})
map.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- Nvim-tree mappings
map.set('n', '<leader>e', vim.cmd.NvimTreeToggle)
