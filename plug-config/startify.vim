let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
let g:startify_fortune_use_unicode = 1
let g:startify_change_to_vcs_root = 1
let g:startify_lists = [
        \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
        \ { 'type': 'files',     'header': ['   Files']            },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ ]
let g:startify_bookmarks = [
        \ { 'S': '~/src/stepinsight/' },
        \ { 'A': '~/src/aaron/' },
        \ { 's': '~/.config/nvim' },
        \ ]
