return {
  'tpope/vim-sleuth',
  -- See keybinds
  { 'folke/which-key.nvim',  opts = {} },
  -- Add indentation guides even on blank lines
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {},
  },
  -- Auto comment
  { 'numToStr/Comment.nvim', opts = {} },
  -- Auto close brackets
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  'nvim-tree/nvim-web-devicons'
}
