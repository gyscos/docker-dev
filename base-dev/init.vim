call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'flazz/vim-colorschemes'
Plug 'CSApprox'
Plug 'cscope.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'scrooloose/syntastic'

Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'timonv/vim-cargo'

call plug#end()

" YCM command:
" cmake -G 'Unix Makefiles' -DEXTERNAL_LIBCLANG_PATH=/usr/lib/libclang.so . '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp'
" make ycm_support_libs

filetype plugin indent on

syntax on
color molokai

nmap <F8> :TagbarToggle<CR>
nmap <F3> :NERDTreeToggle<CR>

set hlsearch                    " hilight search
set mouse=a
"set mousefocus
set nowrap

set laststatus=2                " show status line?  Yes, always!
set background=dark

autocmd FileType go autocmd BufWritePre <buffer> GoFmt

set listchars=eol:\ ,tab:>\ ,trail:-,extends:>,precedes:<
set list

set ts=4 sts=4 sw=4 noexpandtab

set pastetoggle=<F4>
noremap <F5> :source ~/.config/nvim/init.vim<cr>
noremap <F1>   :nohls<cr>

noremap <leader>fa :call cscope#findInteractive(expand('<cword>'))<CR>
noremap <leader>l :call ToggleLocationList()<CR>
nnoremap <leader>s :%s/\<<C-r><C-w>\>/

:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

imap <C-w><Left> <Esc><C-w><Left>a
imap <C-w><Right> <Esc><C-w><Right>a
imap <C-w><Down> <Esc><C-w><Down>a
imap <C-w><Up> <Esc><C-w><Up>a

vmap <tab> >gv
vmap <bs> <gv

set splitright
set splitbelow

let git_diff_spawn_mode=2
let g:airline_powerline_fonts = 1
let g:go_fmt_command = "goimports"

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

let g:tagbar_type_rust = {
	\ 'ctagstype' : 'rust',
	\ 'kinds' : [
		\'T:types,type definitions',
		\'f:functions,function definitions',
		\'g:enum,enumeration names',
		\'s:structure names',
		\'m:modules,module names',
		\'c:consts,static constants',
		\'t:traits,traits',
		\'i:impls,trait implementations',
	\]
\}
