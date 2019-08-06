set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle/
call vundle#rc()
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
call vundle#end()
filetype plugin indent on

colorscheme desert
hi CursorLine cterm=none ctermbg=DarkBlue ctermfg=White

set ruler
set ignorecase
set hlsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set statusline+=%F\ %l\:%c
set encoding=utf-8
set fileencoding=utf-8
set nu!
set autowrite
set tags=tags

set cscopetag
set csto=0


if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

map <F5> <C-W>h
map <F6> <C-W>l

syntax enable
syntax on

au FileType python set list
au FileType python set listchars=tab:>-
au FileType python set noexpandtab
au FileType make set noexpandtab

let g:tagbar_width=30
au BufReadPost *.c,*.h,*.cpp,*.cc,*.cxx call tagbar#autoopen()

au StdinReadPre * let s:std_in=1
au VimEnter * NERDTree % | wincmd p
au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd Filetype nerdtree nnoremap <buffer> <leader>b :Bookmark 

let NERDTreeWinSize=30
let NERDTreeShowLineNumber=1
let NERDTreeAutoCenter=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '\.vscode', '__pycache__', '\.o', '\.a', '\.so']
