let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark

syntax on
set number
set wildmenu
set laststatus=2
set confirm

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=2
set autoindent
set relativenumber
set incsearch

set ignorecase
set smartcase

set term=xterm-256color
inoremap jk <Esc>
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <C-q> :q!<CR>
nnoremap <C-s> :w<CR>

set clipboard=unnamed
set noswapfile
set hlsearch

"if (has("termguicolors"))
"    set termguicolors
"endif
