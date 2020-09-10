
let g:go_test_show_name = 1
let g:go_test_timeout = '60s'

let g:go_info_mode = 'gopls'

let g:go_list_type = 'quickfix'
let g:go_code_completion_enabled = 0

let g:go_fmt_command = 'goimports'
let g:go_fmt_autosave = 1
let g:go_fmt_fail_silently = 1


let g:go_mod_fmt_autosave = 1
let g:go_doc_popup_window = 1
let g:go_def_reuse_buffer = 1

let g:go_get_update = 1
let g:go_build_tags = 'integration'


let g:go_term_mode = 'vsplit'
let g:go_term_enabled = 0
let g:go_term_close_on_exit = 1
let g:go_decls_mode = 'fzf'

let g:go_echo_command_info = 1

let g:go_highlight_types = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
" let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints= 1
let g:go_highlight_generate_tags = 1

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

" let g:go_alternate_mode = 'vedit'
augroup golang
    autocmd!

    autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
    autocmd FileType go nmap <leader>r  <Plug>(go-run)
    autocmd FileType go nmap <leader>t  <Plug>(go-test)
    autocmd FileType qf set wrap

    autocmd FileType go nmap <Leader>i <Plug>(go-info)
    autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
    " autocmd FileType go nmap <Leader>l <Plug>(go-lint)
augroup END




