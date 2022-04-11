let s:red = 'fb5245'
let s:orange = 'd65d0e'
let s:blue = '84a498'
let s:green = 'b8bb26'

" change the default dictionary mappings for file extension matches
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
let g:NERDTreeExtensionHighlightColor = {} " needed
let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreePatternMatchHighlightColor = {}

" Folder
let g:NERDTreeHighlightFolders = 1  " enables folder icon highlighting using exact match
let g:WebDevIconsDefaultFolderSymbolColor = s:blue
highlight WebDevIconsDefaultOpenFolderSymbol ctermfg=4 guifg=#84a498
" let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '
let g:DevIconsDefaultFolderOpenSymbol = ' '

" .venv
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.venv'] = ' '
let g:NERDTreeExactMatchHighlightColor['.venv'] = s:green

" github
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.github'] = ' '
let g:NERDTreeExactMatchHighlightColor['.github'] = s:orange

" yaml yml
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yml'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yaml'] = ''
let g:NERDTreeExtensionHighlightColor['yml'] = s:red
let g:NERDTreeExtensionHighlightColor['yaml'] = s:red

" Makefile
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['makefile'] = 'ﲱ'
let g:NERDTreeExactMatchHighlightColor['makefile'] = s:red

" .gitignore
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.gitignore'] = ''
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:orange
