call plug#begin("/usr/local/share/nvim/site/vim-plug")

Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/completion-nvim'

Plug 'psliwka/vim-smoothie'

Plug 'prettier/vim-prettier'
Plug 'evanleck/vim-svelte'

Plug 'kana/vim-textobj-user'
Plug 'glts/vim-textobj-comment'

Plug 'cespare/vim-toml'

Plug 'JuliaEditorSupport/julia-vim'

call plug#end()

set number termguicolors expandtab autochdir
set shiftwidth=2 
set tabstop=2
set signcolumn=number 
set wildmode=list:longest
"set completeopt=menu,noinsert

au FileType * set fo-=t fo-=c fo-=r fo-=o

let mapleader = ' '
"let g:completion_enable_auto_popup = 0
"let g:completion_enable_server_trigger = 0

nnoremap <space> <nop>
nnoremap <silent> <leader>F :GFiles<cr>
nnoremap <silent> <leader>f :Files<cr>
nnoremap <silent> <leader>b :Buffers<cr>

"imap <silent> <tab> <Plug>(completion_smart_tab)
"imap <silent> <s-tab> <Plug>(completion_smart_s_tab)

"au BufWritePre *.py Black

silent! colorscheme gruvbox

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

let g:smoothie_speed_linear_factor = 30
let g:smoothie_speed_exponentiation_factor = 0.75

lua require 'init'
