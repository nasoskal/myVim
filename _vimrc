" General Vim
 set cmdheight=2
 set nu
 set rnu
 set noshowmatch
 let g:loaded_matchparen=1
 set scrolloff=99
 set cursorline
" au BufRead, BufNewFile *.pro set filetype=prolog syntax=prolog
" set paste
set nowrap
"set t_Co=256	" set colors to 256
syntax enable
let mapleader = "\<Space>"

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

" Vim autocomplete feature shortcut
	nmap <Tab>	<C-n>

" Move lines around
	xnoremap K :move '<-2<CR>gv-gv
	xnoremap J :move '<+1<CR>gv-gv

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
	  \ 'active': {
	  \   'left': [
	  \     [ 'mode', 'paste' ],
	  \     [ 'ctrlpmark', 'git', 'diagnostic', 'cocstatus', 'filename', 'method' ]
	  \   ],
	  \   'right':[
	  \     [ 'filetype', 'fileencoding', 'lineinfo', 'percent' ],
	  \     [ 'blame' ]
	  \   ],
	  \ },
	  \ 'component_function': {
	  \   'blame': 'LightlineGitBlame',
	  \ }
	\ }

	function! LightlineGitBlame() abort
	  let blame = get(b:, 'coc_git_blame', '')
	  " return blame
	  return winwidth(0) > 120 ? blame : ''
	endfunction

" NERDTree
	nmap <F6> :NERDTreeToggle<CR>


" Conquer of Completion (CoC)
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')


colorscheme molokai
hi Normal guibg=NONE ctermbg=NONE
