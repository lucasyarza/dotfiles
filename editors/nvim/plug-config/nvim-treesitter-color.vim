" https://github.com/ChristianChiarulli/nvcode-color-schemes.vim

lua << EOF
  require'nvim-treesitter.configs'.setup {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
      },
    }
EOF


highlight TSKeyword ctermfg=167 guifg=#fb4934 cterm=italic gui=italic
