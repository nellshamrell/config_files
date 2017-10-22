" Configuration file for vim
set nocompatible              " be iMproved, required
filetype off                  " required

set number
set paste

let mmapleader=","
let maplocalleader=","


" Enable filetype plugins
:filetype plugin on
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible        " Use Vim defaults instead of 100% vi compatibility
set backspace=indent,eol,start  " more powerful backspacing

" Now we set some defaults for the editor
set autoindent          " always set autoindenting on
set textwidth=0         " Don't wrap words by default
set viminfo='20,\"50    " read/write a .viminfo file, don't store more than
                        " 50 lines of registers
set history=500         " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set expandtab           " insert space characters when the tab key is pressed
set tabstop=4           " set tab to 4 spaces
set shiftwidth=4        " when indenting, do 4 spaces

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Don't do swap files
set noswapfile

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

if has("autocmd")
 " Enabled file type detection
 " Use the default filetype settings. If you also want to load indent files
 " to automatically do language-dependent indenting add 'indent' as well.
 filetype plugin on
 autocmd BufWritePre * call <SID>StripTrailingWhitespaces()

endif " has ("autocmd")

set showmatch           " Show matching brackets.

" Plugins
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
 call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'rust-lang/rust.vim'
Plug 'airblade/vim-gitgutter'
Plug 'racer-rust/vim-racer'
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/nvim-cm-racer'

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'
" (Optional) Multi-entry selection UI.
Plug 'Shougo/denite.nvim'

" (Optional) Completion integration with deoplete.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" (Optional) Completion integration with nvim-completion-manager.
Plug 'roxma/nvim-completion-manager'

" (Optional) Showing function signature and inline doc.
Plug 'Shougo/echodoc.vim'

Plug 'junegunn/vim-easy-align' " vim-easy-align

Plug 'Valloric/YouCompleteMe'

Plug 'vim-ruby/vim-ruby'

Plug 'pangloss/vim-javascript'

Plug 'rust-lang/rust.vim'

" Initialize plugin system
call plug#end()

map <C-n> :NERDTreeToggle<CR>

set hidden

" Required for operations modifying multiple buffers like rename.
