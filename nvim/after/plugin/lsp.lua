map = vim.keymap
local lsp_zero = require('lsp-zero')

lsp_zero.preset('recommended')

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'lua_ls', 'rust_analyzer', 'pylsp', 'gopls'},
  handlers = {
    lsp_zero.default_setup,
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
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    ['<C-j>'] = cmp.mapping.select_next_item(),
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  })
})

lsp_zero.set_preferences({
  sign_icons = { }
})

lsp_zero.on_attach(function(client, bufnr)
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


lsp_zero.format_on_save({
  format_opts = {
    async = true,
    timeout_ms = 10000,
  },
  servers = {
    ['rust_analyzer'] = {'rust'},
    ['pylsp'] = {'python'},
    ['gopls'] = {'gofmt'},
  }
})

lsp_zero.setup()

local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
    end,
  },
})
