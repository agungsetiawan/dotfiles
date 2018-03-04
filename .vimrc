set nocompatible
" set t_Co=256
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
" colorscheme nova

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

nmap <Leader><Leader>nt :tabnext<cr>

" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'rking/ag.vim'
Plug 'skwp/greplace.vim'
Plug 'airblade/vim-gitgutter'
Plug 'qpkorr/vim-bufkill'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ervandew/supertab'
Plug 'acoustichero/goldenrod.vim'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
" Plugin 'majutsushi/tagbar'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'hwartig/vim-seeing-is-believing'
Plug 'dikiaap/minimalist'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'mattn/emmet-vim'
"colorscheme plugin
" Plugin 'carakan/new-railscasts-theme'
Plug 'tmhedberg/matchit'
Plug 'hzchirs/vim-material'
Plug 'joonty/vdebug'
Plug 'tpope/vim-unimpaired'
Plug 'beigebrucewayne/Turtles'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
Plug 'beigebrucewayne/Turtles'
Plug 'tpope/vim-surround'
Plug 'lifepillar/vim-solarized8'
Plug 'junegunn/goyo.vim'
Plug 'miyakogi/seiya.vim'
Plug 'sjl/vitality.vim'

" call vundle#end()
call plug#end()


nmap <Leader>t :NERDTreeToggle<cr>
nmap <Leader>n :NERDTreeFind<cr>
let NERDTreeHijackNetrw = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'molokai'
" let g:airline_theme = 'minimalist'
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

imap jj <Esc>
" nmap <leader>r :CtrlPMRUFiles<cr>
" nmap <leader>b :CtrlPBuffer<cr>
nmap <leader>r :Files<cr>
nmap <leader>b :Buffers<cr>
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:20,results:20'

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

set splitbelow
set splitright

au FocusGained * call gitgutter#all()
