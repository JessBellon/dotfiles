
"" ==================== vim-go ====================
let g:go_debug_windows = {
      \ 'vars':  'leftabove 35vnew',
      \ 'stack': 'botright 10new',
\ }
let g:go_auto_type_info = 0
let g:go_auto_sameids = 0
let g:go_info_mode = 'gopls'
let g:go_rename_command='gopls'
let g:go_gopls_complete_unimported = 1
let g:go_implements_mode='gopls'
let g:go_diagnostics_enabled = 1
let g:go_list_type = 'quickfix' " or locationlist
let g:go_code_completion_enabled = 0
let g:go_test_show_name = 1
let g:go_test_timeout = '60s'

let g:go_doc_popup_window = 1
let g:go_def_reuse_buffer = 1

let g:go_get_update = 1
let g:go_build_tags = 'integration'


let g:go_term_mode = 'vsplit'
let g:go_term_enabled = 1
let g:go_term_close_on_exit = 1
let g:go_decls_mode = 'fzf'

let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints= 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_format_strings = 1

"" let g:go_alternate_mode = 'vedit'
"nmap <C-g> :GoDecls<cr>
"imap <C-g> <esc>:<C-u>GoDecls<cr>

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction


augroup go
  autocmd!
  
  autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
  autocmd FileType go nmap <silent> <leader>b :<C-u>call <SID>build_go_files()<CR>
"  autocmd FileType go nmap <silent> <leader>t  <Plug>(go-test)
"  autocmd FileType go nmap <silent> <leader>r  <Plug>(go-run)
"  autocmd FileType go nmap <silent> <leader>e  <Plug>(go-install)
"  autocmd FileType go nmap <silent> <Leader>v <Plug>(go-def-vertical)
"  autocmd FileType go nmap <silent> <Leader>s <Plug>(go-def-split)
"  autocmd FileType go nmap <silent> <Leader>d <Plug>(go-def-tab)

"  autocmd FileType go nmap <silent> <Leader>x <Plug>(go-doc-vertical)

"  autocmd FileType go nmap <silent> <Leader>i <Plug>(go-info)
"  autocmd FileType go nmap <silent> <Leader>l <Plug>(go-metalinter)


"  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
"  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
"  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
"  autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END




