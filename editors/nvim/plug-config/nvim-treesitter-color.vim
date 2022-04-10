" https://github.com/ChristianChiarulli/nvcode-color-schemes.vim

lua << EOF
  require'nvim-treesitter.configs'.setup {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
      },
        rainbow = {
            enable = true,
            -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
            extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
            max_file_lines = nil, -- Do not enable for files with more than n lines, int
            -- colors = {}, -- table of hex strings
            -- termcolors = {} -- table of colour name strings
        },
    }

EOF


highlight TSKeyword ctermfg=167 guifg=#fb4934 cterm=italic gui=italic
