local status, packer = pcall(require, "packer")
if not status then
  print("Packer is not installed")
  return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return packer.startup(function(use)
  use "wbthomason/packer.nvim"

  -- Theme
  use { "catppuccin/nvim", as = "catppuccin" }
  use "glepnir/dashboard-nvim"

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use "kyazdani42/nvim-web-devicons"

  -- Floating terminal
  use "voldikss/vim-floaterm"

  -- Git
  use {
    'tanvirtin/vgit.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }
  use "nvim-lua/plenary.nvim"

  -- File editing
  use { 'romgrk/barbar.nvim', wants = 'nvim-web-devicons' } -- Better tabs
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use {'neoclide/coc.nvim', branch = 'release' }
  use {
    "utilyre/barbecue.nvim",
    requires = {
      "neovim/nvim-lspconfig",
      "smiteshp/nvim-navic",
      "kyazdani42/nvim-web-devicons", -- optional
    },
    config = function()
      require("barbecue").setup()
    end,
  }
   use({
    'sQVe/sort.nvim',

    -- Optional setup for overriding defaults.
    config = function()
      require("sort").setup({ })
    end
  })
  use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
  }  -- Inline errors
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup { }
    end
  }

  -- File Mgmt
  use "nvim-tree/nvim-tree.lua"
  use { "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    requires = { { "nvim-lua/plenary.nvim" } },
  }
  use "nvim-telescope/telescope-file-browser.nvim"

  -- File Decorations
  use "lukas-reineke/indent-blankline.nvim"
  use "frazrepo/vim-rainbow"

  -- Syntax Highlighting
  use "nvim-treesitter/nvim-treesitter"
  use "PotatoesMaster/i3-vim-syntax"
  use "kovetskiy/sxhkd-vim"
  use "vim-python/python-syntax"
  use "ap/vim-css-color"

  use "posva/vim-vue"

  if packer_bootstrap then
    packer.sync()
  end
end)
