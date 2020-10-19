" General Vim
 set nu
 set rnu
set scrolloff=99
" au BufRead, BufNewFile *.pro set filetype=prolog syntax=prolog
" set paste
set nowrap
set t_Co=256	" set colors to 256
syntax enable
let mapleader = "\<Space>"

" Tab stops
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent

" Commenting
" space-- insert "--" commenting
	nnoremap <leader>- :norm i--<cr>
	vnoremap <leader>- :norm i--<cr>
" space-6 uncomment
	nnoremap <leader>6 :norm ^x<cr>
	vnoremap <leader>6 :norm ^x<cr>

" tab stuff
	nnoremap tn :tabnew<cr>
	nnoremap tk :tabnext<cr>
	nnoremap tj :tabprev<cr>
	nnoremap th :tabfirst<cr>
	nnoremap tl :tablast<cr>

" Quick pairs
	" imap <leader>' ''<ESC>i
	" imap <leader>" ""<ESC>i
	" imap <leader>( ()<ESC>i
	" imap <leader>[ {}<ESC>i

" space-s to save
	nnoremap <leader>s :w<cr>

" space-q to quit (safe quit)
	nnoremap <leader>q :q<cr>

" space-q to quit (doesn't save, watch out!)
	nnoremap <leader>qq :q!<cr>

" Reload vimrc
	nnoremap <leader>rv :source<Space>$MYVIMRC<cr>

" Edit vimrc
	nnoremap <leader>ev :tabnew $MYVIMRC<cr>

" Pathogen
	execute pathogen#infect()
	syntax on
	filetype plugin indent on



" Arduino

	let g:arduino_dir = 'C:\\Users\user\AppData\Local\Arduino54'
	au BufRead, BufNewFile *.pde set filetype=arduino
	au BufRead, BufNewFile *.ino set filetype=arduino

" Easymotion
	" map <Leader> <Plug>(easymotion-prefix)

" s{char}{char} to move to {char}{char}
	nmap s <Plug>(easymotion-overwin-f2)

" Lightline
	set laststatus=2
	set noshowmode
	let g:lightline = {
		  \ 'colorscheme': 'simpleblack',
		  \ }

" NERDTree
	nmap <F6> :NERDTreeToggle<CR>

" vim-colorschemes
	colorscheme molokai
