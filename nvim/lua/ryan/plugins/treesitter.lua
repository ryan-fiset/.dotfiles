return {
  'nvim-treesitter/nvim-treesitter',
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",

  config = function()
    local treesitter = require('nvim-treesitter.configs')

    treesitter.setup({
      -- A list of parser names, or "all" (the five listed parsers should always be installed)
      ensure_installed = { "rust", "lua", "gitignore", "make", "toml", "query" },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
      auto_install = true,

      -- List of parsers to ignore installing (or "all")
      ignore_install = {},

      highlight = {
        enable = true,
      },
    })
  end,
}
  
