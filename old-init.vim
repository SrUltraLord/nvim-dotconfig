:set nu rnu

" Mostrar caracteres invisibles
:set listchars+=space:•
:set list

" Definir el tamaño del tab
:set autoindent expandtab tabstop=2 shiftwidth=2

" Custom snippets
verbose map <c-p> :FZF <Enter>
verbose map <c-b> :NvimTreeToggle <Enter>

set encoding=utf-8
set nobackup
set nowritebackup

set updatetime=300

set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 2

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
call plug#begin()
    Plug 'norcalli/nvim-colorizer.lua'

    Plug 'posva/vim-vue'

    " Linea de estado
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'

    " Nerd tree
    Plug 'nvim-tree/nvim-tree.lua'

    Plug 'wfxr/minimap.vim'

    " Tailwind
    Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}

    " Comentarios
    Plug 'numToStr/Comment.nvim'

    " Completer
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    " Better console
    Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

    Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

colorscheme catppuccin-macchiato " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

lua << END
require('lualine').setup()
require('Comment').setup()

--For file tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

END
