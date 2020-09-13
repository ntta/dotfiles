" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Themes
  Plug 'morhetz/gruvbox'

  " Status Line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Indent line
  Plug 'yggdroot/indentline'

  " File search
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'

  " Start screen
  Plug 'mhinz/vim-startify'

  " Version control
  Plug 'mhinz/vim-signify'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'

  " Navigate text
  Plug 'justinmk/vim-sneak'

  " Key binding
  Plug 'liuchengxu/vim-which-key'

  " Surround word
  Plug 'tpope/vim-surround'

  " Commenter
  Plug 'preservim/nerdcommenter'

  " Multiple cursors
  Plug 'terryma/vim-multiple-cursors'

  " Emmet
  Plug 'mattn/emmet-vim'

  " Floaterm
  Plug 'voldikss/vim-floaterm'

  " Languages
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'pangloss/vim-javascript'

  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'

  Plug 'dart-lang/dart-vim-plugin'

call plug#end()
