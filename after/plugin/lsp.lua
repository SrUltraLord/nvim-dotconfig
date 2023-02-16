local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'html',
    'eslint',
    'tsserver',
    'volar',
    'rust_analyzer'
})

local rust_lsp = lsp.build_options('rust_analyzer', {})

lsp.nvim_workspace()
lsp.setup()

require('rust-tools').setup({ server = rust_lsp })
