syntax enable

set clipboard=unnamed                              " use mocos clipboard

set guioptions-=T                                  " No Tool bar

" True colors
if exists('+termguicolors')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set cursorline                                     " Highlight the current line

set hidden                                         " When on a buffer becomes hidden when it is abandoned
set path+=**
set nowrap
set encoding=UTF-8

set number relativenumber

set smartindent
set smarttab
set tabstop=4 softtabstop=4
set scrolloff=10
set shiftwidth=4
set expandtab
set smartcase
set incsearch
set nohlsearch
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
" set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set noswapfile
set nobackup
set undofile
execute 'set undodir=' . g:nvim_data_root . '/undodir'

" Python virtual environment detection in linux
let g:loaded_python_provider = 0
" Ruta donde se creó el ambiente de Python con pipenv.
let g:python3_host_prog = '~/.dotfiles/editors/nvim/.venv/bin/python'

" Gruvbox por defecto
let g:gruvbox_italic=1
let g:gruvbox_invert_selection=0
colorscheme gruvbox
