# Add pathogen path
call pathogen#infect('~/.vim_runtime/my_plugins')

# Open a NERDTree automatically when vim starts up.
autocmd vimenter * NERDTree
