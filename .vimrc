" source: http://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim#
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


" save & compile
autocmd filetype c nmap<F4> :w<CR>:!gcc % -o %:r <CR>

" save & compile & run
autocmd filetype c nmap<F5> :w<CR>:!gcc % -o %:r<CR>:!./%:r<CR>
