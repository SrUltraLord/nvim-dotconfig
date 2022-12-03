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

return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"

  -- Theme
  use { "catppuccin/nvim", as = "catppuccin" }
  use "glepnir/dashboard-nvim"

  -- Status line
  use "nvim-lualine/lualine.nvim"

  -- File editing
  use "numToStr/Comment.nvim"

  -- File Mgmt
  use "nvim-tree/nvim-tree.lua"
  use "kyazdani42/nvim-web-devicons"
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

  if packer_bootstrap then
    require('packer').sync()
  end
end)

