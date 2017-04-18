syntax enable
set number
set expandtab
set shiftwidth=2
set tabstop=2

set hlsearch

"set smartindent
filetype plugin indent on

set background=dark
colorscheme Tomorrow-Night

autocmd Filetype php setlocal shiftwidth=4 tabstop=4

let mapleader = ","

nmap <Leader>c :e $MYVIMRC<cr>

nmap <Leader>f :bn<cr>
nmap <Leader>d :bp<cr>
nmap <Leader>s :BD<cr>

nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l>

nmap <Leader>g <C-]>

nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>b :TagbarToggle<cr>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'qpkorr/vim-bufkill'
Plugin 'tpope/vim-commentary'
Plugin 'junegunn/vim-easy-align'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'ervandew/supertab'
Plugin 'acoustichero/goldenrod.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'jiangmiao/auto-pairs'
Plugin 'majutsushi/tagbar'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'hwartig/vim-seeing-is-believing'

call vundle#end()

nmap <Leader>t :NERDTreeToggle<cr>
nmap <Leader>n :NERDTreeFind<cr>
let NERDTreeHijackNetrw = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'molokai'
set laststatus=2

set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

nmap <Leader>w :StripWhitespace<cr>

" Enable seeing-is-believing mappings only for Ruby
augroup seeingIsBelievingSettings
  autocmd!

  autocmd FileType ruby nmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)
  autocmd FileType ruby xmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)

  autocmd FileType ruby nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby imap <buffer> <F4> <Plug>(seeing-is-believing-mark)

  autocmd FileType ruby nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
  autocmd FileType ruby imap <buffer> <F5> <Plug>(seeing-is-believing-run)
augroup END
