map = vim.keymap

local builtin = require('telescope.builtin')
map.set('n', '<leader>pf', builtin.find_files, {})
map.set('n', '<C-p>', builtin.git_files, {})
map.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")})
end)
