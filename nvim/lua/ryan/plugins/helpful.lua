return {
  'tpope/vim-sleuth',
  { 'folke/which-key.nvim',  opts = {} },
  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },
  { 'numToStr/Comment.nvim', opts = {} },
}
