" change the leader key from "\" to ","
let mapleader=","

" Edit vimrc faster
nnoremap <Leader>v :e $MYVIMRC<cr>

" Reload init.vim
nnoremap <silent> <Leader><Leader> :source $MYVIMRC<cr>

"Change working directory
nnoremap <leader>cd :cd %:p:h<cr>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Resize windows
nnoremap <M-*> <C-w><
nnoremap <M--> <C-w>-
nnoremap <M-+> <C-w>+
nnoremap <M-_> <C-w>>

"Mapping NERDTree
map <C-n> :NERDTreeToggle<cr>

" NerdCommenter Toggle remap to CTRL+_
vmap <C-_> <Plug>NERDCommenterToggle<cr>
nmap <C-_> <Plug>NERDCommenterToggle<cr>

" For more :help terminal
nmap <leader>t :ToggleTerm<cr>

" Move between buffers
nnoremap <leader><tab> :bn<CR>
nnoremap <leader><S-tab> :bp<cr>

" Closing and hiding current buffer
nnoremap <leader>w :bd<cr>

" FZF
nmap <c-p> :Buffer<cr>

" VM
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n
