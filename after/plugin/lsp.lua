local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'html',
  'eslint',
  'tsserver',
  'volar',
  'sumneko_lua',
  'rust_analyzer'
})

lsp.nvim_workspace()
lsp.setup()
