" --------------------
" Add pathogen path
" --------------------
call pathogen#infect('~/.vim_runtime/my_plugins')

" --------------------
" Autotag
" --------------------
source ~/.vim_runtime/my_plugins/autotag/plugin/autotag.vim

" --------------------
" NERDTree setting
" --------------------
" Open a NERDTree automatically when vim starts up.
autocmd vimenter * NERDTree

" --------------------
" Setting for tag
" --------------------
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" --------------------
" Setting for tagbar
" --------------------
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>


" --------------------
" Project
" --------------------
map <A-S-p> :Project<CR>
map <A-S-o> :Project<CR>:redraw<CR>/
nmap <silent> <F3> <Plug>ToggleProject
let g:proj_window_width = 30
let g:proj_window_increment = 50

" --------------------
" exTagSelect
" --------------------
nnoremap <silent> <F7> :ExtsToggle<CR>
nnoremap <silent> <Leader>ts :ExtsSelectToggle<CR>
nnoremap <silent> <Leader>tt :ExtsStackToggle<CR>
map <silent> <Leader>] :ExtsGoDirectly<CR>
map <silent> <Leader>[ :PopTagStack<CR>
let g:exTS_backto_editbuf = 0
let g:exTS_close_when_selected = 1

" --------------------
" exGlobalSearch
" --------------------
nnoremap <silent> <F5> :ExgsToggle<CR>
nnoremap <silent> <Leader>gs :ExgsSelectToggle<CR>
nnoremap <silent> <Leader>gq :ExgsQuickViewToggle<CR>
nnoremap <silent> <Leader>gt :ExgsStackToggle<CR>
map <S-f> :GS
map <C-S-f> :GSW
let g:exGS_backto_editbuf = 0
let g:exGS_close_when_selected = 0

" --------------------
" exSymbolTable
" --------------------
nnoremap <silent> <Leader>ss :ExslSelectToggle<CR>
nnoremap <silent> <Leader>sq :ExslQuickViewToggle<CR>
nnoremap <silent> <F6> :ExslToggle<CR>
nnoremap <A-S-l> :ExslQuickSearch<CR>/^
nnoremap <silent> <Leader>sg :ExslGoDirectly<CR>
let g:exSL_SymbolSelectCmd = 'TS'

" --------------------
" exEnvironmentSetting
" --------------------
function g:exES_UpdateEnvironment()
 if exists( 'g:exES_PWD' )
 silent exec 'cd ' . g:exES_PWD
 endif
 if exists( 'g:exES_Tag' )
 let &tags = &tags . ',' . g:exES_Tag
 endif
 if exists( 'g:exES_Project' )
 silent exec 'Project ' . g:exES_Project
 endif
endfunction
