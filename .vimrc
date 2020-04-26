" Disclaimer:
"   Most of the config in this file are not mine
"   Please take a look at the vimrc of the maintainer/author:
"     Amir Salihefendic
"       http://amix.dk - amix@amix.dk
"       https://github.com/amix/vimrc
" 
" Note:
"   If you want to install plugins in this file, make sure you
"   read README.md at 
"     https://github.com/ntta/dotfiles
"   If you don't want to, delete Plugins section
"
" Sections:
"   -> Plugins
"   -> General
"   -> User interface
"   -> Colours and fonts
"   -> Files and backups
"   -> Text, tab and indent related
"   -> Visual mode related
"   -> Moving around, tabs, windows and buffers
"   -> Editing mappings
"   -> Spell checking
"   -> Misc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug: https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'yggdroot/indentline'
call plug#end()

" vim-pathogen: https://github.com/tpope/vim-pathogen
execute pathogen#infect()
" Installed syntastic
" Installed YouCompleMe

" YouCompleteMe
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

" vim-airline
let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_z = "%p%% \ue0a1 %l/%L Col:%c"

" yuezk/vim-js
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" maxmellon/vim-jsx-pretty
let g:vim_jsx_pretty_highlight_close_tag = 0

" pangloss/vim-javascript
let g:javascript_plugin_flow = 1

" yggdroot/indentline
let g:indentLine_color_term = 239
let g:indentLine_char = '|'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> General 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set Python3 dll path, this will be used by YouCompleteMe
set pythonthreedll=C:\\Users\\nguye\\AppData\\Local\\Programs\\Python\\Python38\\python38.dll

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> User interface 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

" Always show current position
set ruler

" Show line number
set number

" Set column width
set colorcolumn=0

" Set height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases !?
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regex turn magic on
set magic

" SHow matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound and blinking screen on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=0

" Hide current mode in command bar 
" We have vim-airline to tell you that already
set noshowmode


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Colours and fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Set theme
try
  colorscheme gruvbox
catch
endtry
set bg=dark

" Set UTF-8 as standard enconding
set termencoding=utf-8
set fileencoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Use color defined by the theme, ignore color settings of terminal (e.g MINGW)
set t_Co=256


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Files and backups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in git, etc.
set nobackup
set nowb
set noswapfile


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Text, tab and indent related 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ?!
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

" Auto indent
set ai

" Smart indent
set si

" Wrap lines
set nowrap


" Show invisibles
set list
set listchars=
set listchars+=tab:·\
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:░

set splitbelow
set splitright


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Visual mode related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>
