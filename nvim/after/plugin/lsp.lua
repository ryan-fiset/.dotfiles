map = vim.keymap
local lsp = require('lsp-zero')

lsp.preset('recommended')

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'lua_ls', 'rust_analyzer', 'pylsp'},
  handlers = {
    lsp.default_setup,
  },
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-y>'] = cmp.mapping.confirm({select = true}),
    ['<C-j>'] = cmp.mapping.select_next_item(),
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  })
})

lsp.set_preferences({
  sign_icons = { }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}
  
  map.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
  map.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
  map.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
  map.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
  map.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
  map.set('n', 'd]', function() vim.diagnostic.goto_prev() end, opts)
  map.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
  map.set('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
  map.set('n', '<leader>rn', function() vim.lsp.buf.rename() end, opts)
  map.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
