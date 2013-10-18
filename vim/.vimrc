set nowrap
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set mouse=a
set ai "Auto indent
set si "Smart indent
set nu
set showmatch
set autoindent
"set selectmode=mouse
set autochdir
set wildmenu
set wildignore=*.o,*~,*.pyc
set cmdheight=2
set relativenumber 
set number

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set hlsearch
set incsearch

"set foldmethod=indent   "fold based on indent
"set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
"set foldlevel=1         "this is just what i use
"set fdm=manual
"set fdc=1

"function! JavaScriptFold() 
"    setl foldmethod=syntax
"    setl foldlevelstart=1
"    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend
"
"    function! FoldText()
"        return substitute(getline(v:foldstart), '{.*', '{...}', '')
"    endfunction
"    setl foldtext=FoldText()
"endfunction
"au FileType javascript call JavaScriptFold()
"au FileType javascript setl fen

" vundle
"filetype off
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
"Bundle 'gmarik/vundle'
"Bundle "pangloss/vim-javascript"

"filetype plugin indent on

"call pathogen#infect()

map <F9> :NERDTreeToggle<CR>
let g:rehash256 = 1
set background=dark

nmap <F4> :w<CR>:make<CR>:cw<CR>


fun! RangerChooser()
    exec "silent !ranger --choosefile=/tmp/chosenfile " . expand("%:p:h")
    if filereadable('/tmp/chosenfile')
        exec 'edit ' . system('cat /tmp/chosenfile')
        call system('rm /tmp/chosenfile')
    endif
    redraw!
endfun
map ,r :call RangerChooser()<CR>

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['py', 'php', 'js'],
                           \ 'passive_filetypes': [] }

