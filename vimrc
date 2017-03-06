set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
:set tags=./tags;
" Use ack instead of grep
set grepprg=ack
autocmd VimEnter * NERDTree " Runs NERDTree on startup
autocmd VimEnter * wincmd p
:set colorcolumn=81
:set number

" Unmap arrow keys

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Custom keys mapping
nnoremap <F5> :buffers<CR>:buffer<Space>
" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <F12> :BufExplorer<CR>
nnoremap <silent> <M-F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>
noremap <silent> <F8> :TagbarToggle<CR>

" Custom smooth scroll
noremap <silent> <c-k> :call smooth_scroll#up(3, 30, 1)<CR>
noremap <silent> <c-j> :call smooth_scroll#down(3, 30, 1)<CR>

noremap <silent> <F10> :NERDTreeFind<CR>
" Setup clipboard to be available to X clipboard
" set clipboard=unnamed
" Send more characters for redraws
set ttyfast
" Enable mouse use in all modes
set mouse=a
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2

color codeschool
hi LineNr ctermfg=8 ctermbg=Black
hi ColorColumn ctermbg=8
hi NonText ctermbg=Black
set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set guifont=Monaco:h11
let g:NERDTreeWinPos = "left"
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
:set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'            " Vim plugins bundler
Plugin 'tpope/vim-rails'              " Rails plugin
Plugin 'tpope/vim-fugitive'           " may very well be the best Git wrapper
Plugin 'scrooloose/nerdtree'          " File navigator
" Plugin 'jpo/vim-railscasts-theme'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'          " aims to provide support for snippets
Plugin 'honza/vim-snippets'           " snippets for different lenguages
Plugin 'craigemery/vim-autotag'       " autotag changes
Plugin 'ctrlpvim/ctrlp.vim'           " Ctrl P - pretty cool file finder
Plugin 'tomtom/tcomment_vim'          " Comments
Plugin 'Raimondi/delimitMate'         " Raimondi/delimitMate
Plugin 'ngmy/vim-rubocop'             " Rubocop wraper
Plugin 'jlanzarotta/bufexplorer'      " Buffer explorer
Plugin 'airblade/vim-gitgutter'       " shows a git diff in gutter sign column
Plugin 'majutsushi/tagbar'            " Tag Bar
Plugin 'terryma/vim-smooth-scroll'    " Smooth scrolling
Plugin 'vim-scripts/indexer.tar.gz'   " Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/matchit.zip'      " % to match more than just single characters.
Plugin 'vim-scripts/DfrankUtil'       " Just a library for some scripts
Plugin 'vim-scripts/vimprj'           " helps manage options for multiple projects
Plugin 'vim-scripts/closetag.vim'     " <- Under testing. Not work properly

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

