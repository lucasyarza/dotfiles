let g:ale_disable_lsp = 1

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" Formating
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %(code): %%s [%severity%]'

" Fixers
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['isort']
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
