""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => YankRing
""""""""""""""""""""""""""""""
if has("win16") || has("win32")
    " Don't do anything
else
    let g:yankring_history_dir = '~/.vim/temp_dirs/'
endif


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '<c-f>'
map <leader>b :CtrlPBuffer<cr>
map <leader>m :CtrlPMRUFiles<cr>
map <leader>f :CtrlP<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>nn :NERDTreeToggle<cr>

"Hide .o in nerd tree
let NERDTreeIgnore=['\.o$']


""""""""""""""""""""""""""""""
" => YouCompleteMe
""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_default_global_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_enable_diagnostic_signs = 0
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>


""""""""""""""""""""""""""""""""""""""""""""
" => Pymod
"""""""""""""""""""""""""""""""""""""""""""
"nnoremap <leader>d :RopeGotoDefinition

let g:pymode = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1
let g:pymode_folding = 1
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint', 'pep257']
let g:pymode_lint_ignore = ""
let g:pymode_lint_sort = ['E', 'C', 'I']
let g:pymode_lint_unmodified = 1
let g:pymode_rope = 0
let g:pymode_rope_show_doc_bind = 'K'
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_slow_sync = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_lint_mccabe_complexity = 8
