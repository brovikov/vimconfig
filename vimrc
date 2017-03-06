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
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'craigemery/vim-autotag'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'Raimondi/delimitMate'
Plugin 'ngmy/vim-rubocop'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'vim-scripts/closetag.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

