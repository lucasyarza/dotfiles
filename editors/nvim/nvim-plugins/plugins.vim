call plug#begin(stdpath('data').'/plugged')

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Git
    Plug 'airblade/vim-gitgutter'

    " NERDTree
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    " Conquer Of Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Surround.vim
    Plug 'tpope/vim-surround'

    " Editin
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}

    " Airline status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " NERDCommenter
    Plug 'preservim/nerdcommenter'

    " Other themes
    Plug 'morhetz/gruvbox'
    Plug 'arcticicestudio/nord-vim'

    " Python
    " Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
    Plug 'dense-analysis/ale'

    " Highlight
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'ap/vim-css-color'

    " Formatter
    Plug 'godlygeek/tabular'
    Plug 'editorconfig/editorconfig-vim'

    " Terminal
    Plug 'akinsho/toggleterm.nvim'

call plug#end()
