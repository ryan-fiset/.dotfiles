return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Utilities
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- Navigation
  use 'nvim-tree/nvim-tree.lua'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Themes and Looks
  use 'Shatur/neovim-ayu'
  use 'nvim-tree/nvim-web-devicons'

  -- Quality of Life
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
end)
