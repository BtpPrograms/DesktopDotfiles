" Set up Vundle 
set nocompatible
filetype plugin indent off
syntax off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Installed Bundles 
Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'

call vundle#end()

" Reenable plugins once done with Vundle 
filetype plugin indent on
syntax on

" Show Line Numbers  
set number

" Toggle Paste Mode
set pastetoggle=<s>

" Various Tab Related Options
set tabstop=4
set shiftwidth=4
set expandtab

" Set up Powerline 
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" Key to active NerdTree
map <F2> :NERDTreeToggle<CR>

" Python - Highlight Line Length  
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END

"Python - Setup 
let g:pymode_rope = 0 

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
