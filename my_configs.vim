" Add pathogen path
call pathogen#infect('~/.vim_runtime/my_plugins')
" Open a NERDTree automatically when vim starts up.
" autocmd vimenter * NERDTree
" Setting for tagbar
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>
" Setting for exUtility
"   exTagSelect
nnoremap <silent> <F7> :ExtsToggle<CR>
nnoremap <silent> <Leader>ts :ExtsSelectToggle<CR>
nnoremap <silent> <Leader>tt :ExtsStackToggle<CR>
map <silent> <Leader>] :ExtsGoDirectly<CR>
map <silent> <Leader>[ :PopTagStack<CR>
let g:exTS_backto_editbuf = 0
let g:exTS_close_when_selected = 1
" Setting for ide plugin
" Integrate the ide plugin with the others plugin
let g:SrcExpl_pluginList = [
	\ "__Tag_Bar__",
	\ "__IDE_Project__",
	\ "_NERD_tree_",
	\ "BufExplorer"
	\ ]

" Common setting
let g:IDE_AdvancedFlags 	= "fMOSTw"
	let g:IDE_ProjectFlags 		= "FgimsSt"
	let g:IDE_IconFolder 		= "~/.vim_runtime/my_plugings/ide/icons"
	let g:IDE_WindowIncrement 	= 50
	let g:IDE_MapProjectToggle 	= '<F12>'
	let g:IDE_MapMove2RightTab 	= '<C-Right>'
	let g:IDE_MapMove2LeftTab 	= '<C-Left>'
	let g:IDE_MapMakeMainTarget_1 	= '<F7>r'
	let g:IDE_MapMakeMainTarget_2 	= '<F7>d'
	let g:IDE_MapMakeMainTarget_3 	= '<F7>c'
	let g:IDE_MapMakeThisTarget_1 	= '<C-F7>r'
	let g:IDE_MapMakeThisTarget_2 	= '<C-F7>d'
	let g:IDE_MapMakeThisTarget_3 	= '<C-F7>c'
