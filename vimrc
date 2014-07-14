set number
set nowrap
syntax on
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set foldmethod=manual

filetype on
au BufNewFile,BufRead *.pp set filetype=puppet
au BufNewFile,BufRead *.ejs set filetype=html
au BufRead,BufNewFile *.json set filetype=json
autocmd BufRead,BufNewFile *.markdown setlocal spell spelllang=en_gb

let g:syntastic_html_tidy_ignore_errors= ["proprietary attribute \"autofocus", "proprietary attribute \"ui-", "proprietary attribute \"ng-", "<form> proprietary attribute \"novalidate\"", "<form> lacks \"action\" attribute", "trimming empty <span>", "<input> proprietary attribute \"autofocus\"", "unescaped & which should be written as &amp;", "inserting implicit <span>", "<input> proprietary attribute \"required\"", "trimming empty <select>", "trimming empty <button>", "<img> lacks \"src\" attribute", "plain text isn't allowed in <head> elements", "<html> proprietary attribute \"app\"", "<link> escaping malformed URI reference", "</head> isn't allowed in <body> elements", "<script> escaping malformed URI reference", "discarding unexpected <body>", "'<' + '/' + letter not allowed here", "missing </script>", "proprietary attribute \"autocomplete\"", "trimming empty <i>", "proprietary attribute \"required\"", "proprietary attribute \"placeholder\"", "<ng-include> is not recognized!", "discarding unexpected <ng-include>", "missing </button>", "replacing unexpected button by </button>", "<ey-confirm> is not recognized!", "discarding unexpected <ey-confirm>", "discarding unexpected </ey-confirm>", "discarding unexpected </ng-include>"]
let g:syntastic_javascript_checkers = ['jshint']

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
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdcommenter'
"NeoBundle 'syntastic'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'marijnh/tern_for_vim'
NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "tomtom/tlib_vim"
NeoBundle "garbas/vim-snipmate"
NeoBundle "honza/vim-snippets"
NeoBundle 'tpope/vim-surround.git'
NeoBundle 'sickill/vim-pasta'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'mmozuras/snipmate-mocha'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'elzr/vim-json'
NeoBundle 'MattesGroeger/vim-bookmarks'

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

:autocmd InsertEnter,InsertLeave * set cul!

nmap <F8> o<Esc>
nmap <F9> O<Esc>
:imap jj <Esc>
au BufNewFile,BufRead *.ejs set filetype=html

imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger
set completeopt-=preview

:set ignorecase
:set smartcase
