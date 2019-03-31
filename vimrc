colorscheme ron
hi CursorLine cterm=none ctermbg=DarkBlue ctermfg=White
syntax enable
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
map <F5> <C-w>w
map <F6> :Tlist<CR>
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_WinWidth = 40
syntax on
au FileType python set list
au FileType python set listchars=tab:>-
au FileType python set noexpandtab
au FileType make set noexpandtab

