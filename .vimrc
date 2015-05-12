set number
set nowrap
set autoindent
set shiftwidth=2
set tabstop=2
set nocompatible              " be iMproved, required
set exrc " Accept local vim rc files "
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'Syntastic'
" All of your Plugins must be added before the following line
let g:syntastic_cpp_compiler = 'mpicxx'
let g:syntastic_c_compiler = 'mpicc	'
let g:ycm_show_diagnostics_ui = 0
let g:syntastic_cpp_compiler_options = '-Wall' 
let g:syntastic_cpp_check_header = 1 
Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/nerdcommenter'
" Snippets - snipMate "
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'


call vundle#end()            " required
filetype plugin indent on    " required


" Setting the forward and backward snippets to be ctrl-l and ctrl-L"
imap <C-l> <Plug>snipMateNextOrTrigger
imap <C-k> <Plug>snipMateBack
"Setting the ultisnippets to the same values as the snippets"
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
" To ignore plugin indent changes, instead use:
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"LATEX-SUITE
 filetype plugin on
 set grepprg=grep\ -nH\ $*
 filetype indent on
 let g:tex_flavor='latex'

    " REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
    filetype plugin on
    
    " IMPORTANT: win32 users will need to have 'shellslash' set so that latex
    " can be called correctly.
    set shellslash
    
    " IMPORTANT: grep will sometimes skip displaying the file name if you
    " search in a singe file. This will confuse Latex-Suite. Set your grep
    " program to always generate a file-name.
    set grepprg=grep\ -nH\ $*
    
    " OPTIONAL: This enables automatic indentation as you type.
    filetype indent on
    
    " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
    " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
    " The following changes the default filetype back to 'tex':
    let g:tex_flavor='latex'
		let g:Tex_DefaultTargetFormat = 'pdf'
		let g:Tex_MultipleCompileFormats='pdf, aux'
