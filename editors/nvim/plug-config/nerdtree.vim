scriptencoding utf-8

let g:custom_nvim_sidebar_width              = 35
let g:custom_nvim_filetree_show_hidden_files = 1
let g:custom_nvim_filetree_opened_icon       = ' '
let g:custom_nvim_filetree_closed_icon       = ' '
let g:custom_nvim_filetree_direction         = 'right'

"Mapping NERDTree
map <C-n> :NERDTreeToggle<cr>


if get(g:, 'custom_nvim_filetree_direction', 'right') ==# 'right'
  let g:NERDTreeWinPos = 'rightbelow'
else
  let g:NERDTreeWinPos = 'left'
endif

let g:NERDTreeWinSize             = get(g:, 'NERDTreeWinSize', get(g:, 'custom_nvim_sidebar_width', 35))
let g:NERDTreeChDirMode           = get(g:, 'NERDTreeChDirMode',1)
let g:NERDTreeShowHidden          = get(g:, 'custom_nvim_filetree_show_hidden_files', 0)
let g:NERDTreeDirArrowExpandable  = get(g:, 'NERDTreeDirArrowExpandable', get(g:, 'custom_nvim_filetree_closed_icon', ''))
let g:NERDTreeDirArrowCollapsible = get(g:, 'NERDTreeDirArrowCollapsible', get(g:, 'custom_nvim_filetree_opened_icon', ''))
let g:NERDTreeMinimalUI           = 1
let g:NERDTreeIgnore=['\.git$']

" DevIcons
let g:webdevicons_enable_nerdtree    = 1
let g:NERDTreeGitStatusShowIgnored   = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:NERDTreeGitStatusUseNerdFonts  = 1
" Color
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

augroup nerdtree_zvim
  autocmd!
  autocmd bufenter *
        \ if (winnr('$') == 1 && exists('b:NERDTree')
        \ && b:NERDTree.isTabTree())
        \|   q
        \| endif
  autocmd FileType nerdtree call s:nerdtreeinit()
augroup END


function! s:nerdtreeinit() abort
  nnoremap <silent><buffer> yY      : <C-u>call <SID>copy_to_system_clipboard()<CR>
  nnoremap <silent><buffer> P       : <C-u>call <SID>paste_to_file_manager()<CR>
  nnoremap <silent><buffer> h       : <C-u>call <SID>nerdtree_h()<CR>
  nnoremap <silent><buffer> d       : <C-u>call NERDTreeDeleteNode()<CR>
  nnoremap <silent><buffer> l       : <C-u>call <SID>nerdtree_l()<CR>
  nnoremap <silent><buffer> <Left>  : <C-u>call <SID>nerdtree_h()<CR>
  nnoremap <silent><buffer> <Right> : <C-u>call <SID>nerdtree_l()<CR>
  nnoremap <silent><buffer> N       : <C-u>call NERDTreeAddNode()<CR>
  nnoremap <silent><buffer> .       : <C-u>call <SID>nerdtree_dot()<CR>
  nnoremap <silent><buffer> <CR>    : <C-u>call <SID>nerdtree_enter()<CR>
endfunction

function! s:paste_to_file_manager() abort
  let path = g:NERDTreeFileNode.GetSelected().path.str()
  if !isdirectory(path)
    let path = fnamemodify(path, ':p:h')
  endif
  let old_wd = getcwd()
  if old_wd == path
    call s:VCOP.systemlist(['xclip-pastefile'])
  else
    noautocmd exe 'cd' fnameescape(path)
    call s:VCOP.systemlist(['xclip-pastefile'])
    noautocmd exe 'cd' fnameescape(old_wd)
  endif
endfunction

function! s:copy_to_system_clipboard() abort
  let filename = g:NERDTreeFileNode.GetSelected().path.str()
  call s:VCOP.systemlist(['xclip-copyfile', filename])
  echo 'Yanked:' . (type(filename) == 3 ? len(filename) : 1 ) . ( isdirectory(filename) ? 'directory' : 'file'  )
endfunction

function! s:nerdtree_h() abort
  if g:NERDTree.ForCurrentTab().getRoot().path.str()
        \ ==# g:NERDTreeFileNode.GetSelected().path.getParent().str()
    silent! exe 'NERDTree' g:NERDTreeFileNode.GetSelected().path.getParent().getParent().str()
  else
    call g:NERDTreeKeyMap.Invoke('p')
    call g:NERDTreeKeyMap.Invoke('o')
  endif
endfunction

function! s:nerdtree_l() abort
  let path = g:NERDTreeFileNode.GetSelected().path.str()
  if isdirectory(path)
    if matchstr(getline('.'), 'S') ==# g:NERDTreeDirArrowCollapsible
      normal! gj
    else
      call g:NERDTreeKeyMap.Invoke('o')
      normal! gj
    endif
  else
    call g:NERDTreeKeyMap.Invoke('o')
  endif
endfunction

function! s:nerdtree_dot() abort
  call g:NERDTreeKeyMap.Invoke('I')
endfunction

function! s:nerdtree_enter() abort
  let path = g:NERDTreeFileNode.GetSelected().path.str()
  if isdirectory(path)
    silent! exe 'NERDTree' g:NERDTreeFileNode.GetSelected().path.str()
  else
    call g:NERDTreeKeyMap.Invoke('o')
  endif
endfunction
