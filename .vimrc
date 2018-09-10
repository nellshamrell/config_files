j" General settings
set number
set paste
set autoindent		" always set autoindenting on
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set textwidth=0		" Don't wrap words by default
set ruler		" show the cursor position all the time
let mapleader = ','
set nocompatible
filetype plugin indent on

" Don't do swap files
set noswapfile

" Formatting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line('.')
  let c = col('.')
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction