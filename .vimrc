" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

syntax enable
syntax on
set expandtab
set shiftwidth=4
set softtabstop=4

" Ref: http://rritw.com/a/caozuoxitong/Windows/20120813/204392.html
set nu
set cindent
set autoindent
colorscheme desert

" CTags, add by eala
set tags=tags;
set autochdir

" Tag List, add by eala
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" Windows Manager, add by eala
let g:winManagerWindowlLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

" min buffer explorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

nnoremap <silent> <F3> :Grep<CR>

set hlsearch

" NERDTree added by eala
" start NERDTree when Vim starts
"autocmd vimenter * NERDTree
"" if no other win, automatic shutdown
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

filetype plugin indent on
set nocompatible
