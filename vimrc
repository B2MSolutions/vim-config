set number
set nowrap
syntax on
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set foldmethod=indent

if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    "   " work properly when Vim is used inside tmux and GNU screen.
    "     " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif
    
set background=dark
colorscheme jellybeans

map <c-f> :call JsBeautify()<cr>

set nocompatible               " Be iMproved

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

" My Bundles here:
"
" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'maksimr/vim-jsbeautify'
NeoBundle 'einars/js-beautify'
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundle 'altercation/vim-colors-solarized'

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck
