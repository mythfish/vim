" Common setting
" Set tab
set tabstop=2
set shiftwidth=2
set expandtab

" Set encode
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

map <leader>cp :cd ~/project<cr>
map <leader>ct :cd ~/tools<cr> 

" Setting for vim-clang-format
" https://github.com/rhysd/vim-clang-format
" Options
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11",
            \ "BreakBeforeBraces" : "Stroustrup"}
" Shortstruct Key
map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)

" Setting for clang_complete
let g:clang_user_options = '-std=c++11'

" Setting for Trinity
" Open and close all the three plugins on the same time 
nmap <F8>  :TrinityToggleAll<CR> 
" Open and close the Source Explorer separately 
nmap <F9>  :TrinityToggleSourceExplorer<CR> 
" Open and close the Taglist separately 
nmap <F10> :TrinityToggleTagBar<CR> 
" Open and close the NERD Tree separately 
nmap <F11> :TrinityToggleNERDTree<CR> 

" Setting for ctags
" build tags of your own project with CTRL+F12      
" "map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>      
noremap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>      
inoremap <F12> <Esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>
" configure tags - add additional tags here or comment out not-used ones      
set tags+=~/.vim_runtime/tags/boost
set tags+=~/.vim_runtime/tags/ace

" Setting for YouCompleteMe
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Setting NERDTree
" let NERDTreeShowHidden=1

" vim-javascript 
" https://github.com/pangloss/vim-javascript
set regexpengine=1
syntax enable
