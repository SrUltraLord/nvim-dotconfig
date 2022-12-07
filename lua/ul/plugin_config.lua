local g = vim.g
local opt = vim.opt

-- #####################################
-- ## Status line
-- #####################################
require("lualine").setup()


-- #####################################
-- ## Nvim Tree
-- #####################################
-- disable netrw at the very start of your init.lua (strongly advised)
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- #####################################
-- ## Telescope
-- #####################################
require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules", ".git" },
  }
}

-- #####################################
-- ## LSP Zero
-- #####################################
local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'html',
  'volar',
  'eslint',
  'sumneko_lua',
})

lsp.nvim_workspace()
lsp.setup()

-- #####################################
-- ## VGit
-- #####################################
require('vgit').setup()