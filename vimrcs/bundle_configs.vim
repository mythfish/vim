if has('vim_starting')
  set nocompatible               " Be iMproved
  " Required:
  set runtimepath+=~/.vim_runtime/bundle/neobundle.vim/
endif

" Required:
call neobundle#rc(expand('~/.vim_runtime/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Plugins for https://github.com/amix/vimrc
NeoBundle 'vim-scripts/mru.vim'
NeoBundle 'vim-scripts/peaksea'
NeoBundle 'shemerey/vim-peepopen'
NeoBundle 'vim-scripts/YankRing.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'vim-scripts/bufexplorer.zip'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'junegunn/goyo.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'sophacles/vim-bundle-mako'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'michaeljsmith/vim-indent-object'
NeoBundle 'groenewege/vim-less'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/vim-snippets'
NeoBundle 'tpope/vim-surround'
NeoBundle 'amix/vim-zenroom2'

" Others
NeoBundle 'moll/vim-node'
NeoBundle 'mythfish/Trinity'
NeoBundle 'wesleyche/SrcExpl'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'briancollins/vim-jst'
NeoBundle 'tomasr/molokai'

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
