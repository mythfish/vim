" Add pathogen path
call pathogen#infect('~/.vim_runtime/my_plugins')

" Open a NERDTree automatically when vim starts up.
" autocmd vimenter * NERDTree

" Setting for tagbar
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

