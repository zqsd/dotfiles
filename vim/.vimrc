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
set wildmode=longest,list,full
set wildmenu
set wildignore=*.o,*~,*.pyc
set cmdheight=2
"set relativenumber
set number
:au FocusLost * :set number
:au FocusGained * :set relativenumber
set t_Co=256
syntax on
set path=.,,**

:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

colorscheme distinguished

:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/


set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set hlsearch
set incsearch
nnoremap <silent> <CR> :noh<CR>

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

map <F9> :NERDTreeToggle<CR>
let g:rehash256 = 1
set background=dark

nmap <F4> :w<CR>:make<CR>:cw<CR>

"Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc


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
                           \ 'active_filetypes': ['py', 'php', 'js', 'c', 'cpp', 'cc', 'h', 'hh', 'hpp'],
                           \ 'passive_filetypes': [] }

execute pathogen#infect()

"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_jshint_conf="~/.jshintrc"

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_no_include_search = 1
if has('unix')
    let g:syntastic_error_symbol = '✗'
    let g:syntastic_style_error_symbol = '>'
    let g:syntastic_warning_symbol = '!'
    let g:syntastic_style_warning_symbol = '>'
else
    let g:syntastic_error_symbol = 'x'
    let g:syntastic_style_error_symbol = '>'
    let g:syntastic_warning_symbol = '!'
    let g:syntastic_style_warning_symbol = '>'
endif


set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'

" powerline
set rtp+=$POWERLINE/bindings/vim/
set laststatus=2
set t_Co=256

