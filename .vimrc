" source: http://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim#
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set showcmd

" ====================== save/compile/run ==========================
" save & compile
autocmd filetype c nmap<F4> :wa<CR>:!gcc % -o %:r <CR>

" save & compile & run
autocmd filetype c nmap<F5> :wa<CR>:!gcc % -o %:r<CR> :!./%:r<CR>

" ====================== netrw =====================================
" press v to open file in right vertical split
let g:netrw_altv=1

" hide netrw banner
let g:netrw_banner=0

" press p to open file in split, and keeps cursor in netrw
let g:netrw_preview=1

" when splitting netrw window set it to 25% of available space - this has some bugs
let g:netrw_winsize=25

" cwd follows netrw cwd
" let g:netrw_keepdir=0


" ====================== status line ===============================
set statusline+=%F


" ====================== misc ======================================
" change cwd automatically to the current buffer
set autochdir

let $BASH_ENV = "~/.bash_aliases"

set shell=/bin/bash\ --rcfile\ ~/repos/dotfiles/.bashvimrc
nnoremap <leader>s :shell <CR>
nnoremap <leader>d :!svn_meld %:p <CR><CR>
nnoremap <leader>c :make! -j 7 <CR>
set mouse=n
" autocmd VimLeave * :!source ~/.bash_rc


" ctags -R --c++-kinds=+p --fields=+iaS --extra=+fq .  
set path=.,/home/neatuo/WORK/Tools/Sources/**
set tags=tags;/

set clipboard=unnamedplus

