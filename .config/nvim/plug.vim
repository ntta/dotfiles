if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()
" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Core
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" LSP
Plug 'glepnir/lspsaga.nvim'
Plug 'neovim/nvim-lspconfig'

" Themes
Plug 'folke/lsp-colors.nvim'
Plug 'rktjmp/lush.nvim'
Plug 'npxbr/gruvbox.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
Plug 'kyazdani42/nvim-web-devicons'

" Others
Plug 'preservim/nerdcommenter' " Comment tool
Plug 'cohama/lexima.vim' " Auto parentheses
Plug 'tpope/vim-surround' " Change surrounding
Plug 'mg979/vim-visual-multi' " Multi cursor
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } " File browsing
Plug 'mhartington/formatter.nvim' " Formatter
Plug 'yggdroot/indentline' " Display indent alignment

" Languages
Plug 'groenewege/vim-less', { 'for': 'less' }
call plug#end()

