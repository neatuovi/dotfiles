" source: http://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim#
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set showcmd

set ignorecase
set smartcase

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

" when splitting netrw window set it to 20% of available space - this has some bugs
let g:netrw_winsize=20

" cwd follows netrw cwd
" let g:netrw_keepdir=0


" ====================== status line ===============================
" %F - full path
" %l - current line
" %L - number of lines
" note: space must be escaped
set statusline=%F\ \ %l\ /\ %L


" ====================== misc ======================================
" change cwd automatically to the current buffer
set autochdir

let $BASH_ENV = "~/.bash_aliases"

set shell=/bin/bash\ --rcfile\ ~/repos/dotfiles/.bashvimrc
nnoremap <leader>w :shell <CR>
nnoremap <leader>t :!gnome-terminal --working-directory=%:p:h<CR><CR>
nnoremap <leader>d :!svn_meld %:p <CR><CR>
nnoremap <leader>g :!git difftool -t=meld %:p <CR><CR>
nnoremap <leader>c :make! -j 7 <CR>
set mouse=n
" autocmd VimLeave * :!source ~/.bash_rc

autocmd BufRead,BufNewFile *.c,*.cpp nnoremap <buffer> <F4> :find %:r.h <CR>
autocmd BufRead,BufNew *.h nnoremap <buffer> <F4> :find %:r.cpp <CR>
autocmd BufRead,BufNew *.h nnoremap <buffer> <F3> :find %:r.c <CR>

" ctags -R --c++-kinds=+p --fields=+iaS --extra=+fq .  
set path=.,**;/home/oneatu/WORK/Tools/Sources
set tags=tags;/
set complete=.,w,b,u,t

set clipboard=unnamedplus

" ================== bookmarks ======================================
nnoremap <leader>h :e ~/WORK/bookmarks <CR>

