" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '_'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '_'<CR>

" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=200


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Create map to add keys to
let g:which_key_map =  {}
let g:which_key_map['H'] = [ ':Startify', '[H]ome screen' ]
let g:which_key_map['h'] = [ '<C-W>s', 'split [h]orizonally' ]
let g:which_key_map['v'] = [ '<C-W>v', 'split [v]ertically' ]
let g:which_key_map['F'] = [ ':Filetypes', 'change [F]iletype' ]
let g:which_key_map['f'] = [ ':CocCommand prettier.formatFile', '[f]ormat file' ]

" g is for git
let g:which_key_map['g'] = {
  \ 'name': '+[g]it',
  \ 'b': [':Git blame' , '[b]lame'],
  \ 'w': [':GBrowse'   , 'file on [w]eb'],
  \ 'd': [':Gdiffsplit', 'show [d]iff'],
  \ }

let g:which_key_map['y'] = {
  \ 'name': '+histor[y]',
  \ 'f': [':History' , '[f]iles'],
  \ 'c': [':History:'   , '[c]ommands'],
  \ 'd': [':Gdiffsplit', 'show [d]iff'],
  \ }

" s is for search
let g:which_key_map['s'] = {
      \ 'name' : '+[s]earch' ,
      \ 'b' : [':BLines'       , 'current [b]uffer'],
      \ 'B' : [':Buffers'      , 'open [B]uffers'],
      \ 'g' : [':GFiles?'      , 'modified [g]it files'],
      \ 'l' : [':Lines'        , '[l]ines'] ,
      \ 't' : [':Rg'           , '[t]ext in project'],
      \ 'f' : [':FZF'          , '[f]iles in project'],
      \ 'c' : [':Commits'      , '[c]ommits'],
      \ 'H' : [':Helptags'     , '[H]elp tags'] ,
      \ }

" Register which key map
call which_key#register('_', "g:which_key_map")
