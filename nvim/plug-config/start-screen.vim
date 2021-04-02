" Save location for sessions. Git ignoring this.
let g:startify_session_dir = '~/.config/nvim/session'

" Specify what shows on Start Screen
let g:startify_lists = [
                  \ { 'type': 'sessions',  'header': ['   Sessions']       },
                  \ { 'type': 'files',     'header': ['   Files']            },
                  \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
                  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
                  \ ]

" Specify Bookmarks. For now sina content.
let g:startify_bookmarks = [
                  \ { 'c': '~/.xmonad/xmonad.hs' },
                  \ { 'i': '~/.config/nvim/init.vim' },
                  \ { 'z': '~/.config/fish/fish.config' },
                  \ '~/Documents',
                  \ ]

" Automatically restart a session. If start Vim in a directory that contains a
" Session.vim, that session will be loaded automatically. Otherwise it will be
" shown as the top entry in the Startify buffer.
let g:startify_session_autoload = 1

" Startify takes care of buffers
let g:startify_session_delete_buffers = 1

" Similar to Vim-rooter
let g:startify_change_to_vcs_root = 1

" Unicode
let g:startify_fortune_use_unicode = 1

" Automatically update Sessions
let g:startify_session_persistence = 1

" Get rid of empty buffer and quit
let g:startify_enable_special = 0

" HEADER
 let s:header = [
        \ '',
     		\'      ___         ___         ___                   ___         ___         ___         ___         ___      ',
 				\'     /\  \       /\  \       /\__\        ___      /\  \       /\  \       /\  \       /\  \       /\  \     ',
 				\'    /::\  \     /::\  \     /::|  |      /\  \    /::\  \     /::\  \     /::\  \     /::\  \     /::\  \    ',
 				\'   /:/\:\  \   /:/\:\  \   /:|:|  |      \:\  \  /:/\ \  \   /:/\:\  \   /:/\:\  \   /:/\:\  \   /:/\:\  \   ',
 				\'  /:/  \:\__\ /::\~\:\  \ /:/|:|  |__    /::\__\_\:\~\ \  \ /:/  \:\  \ /:/  \:\  \ /:/  \:\__\ /::\~\:\  \  ',
 				\' /:/__/ \:|__/:/\:\ \:\__/:/ |:| /\__\__/:/\/__/\ \:\ \ \__/:/__/ \:\__/:/__/ \:\__/:/__/ \:|__/:/\:\ \:\__\ ',
 				\' \:\  \ /:/  \:\~\:\ \/__\/__|:|/:/  /\/:/  /  \:\ \:\ \/__\:\  \  \/__\:\  \ /:/  \:\  \ /:/  \:\~\:\ \/__/ ',
				\'  \:\  /:/  / \:\ \:\__\     |:/:/  /\::/__/    \:\ \:\__\  \:\  \      \:\  /:/  / \:\  /:/  / \:\ \:\__\   ',
 				\'   \:\/:/  /   \:\ \/__/     |::/  /  \:\__\     \:\/:/  /   \:\  \      \:\/:/  /   \:\/:/  /   \:\ \/__/   ',
 				\'    \::/__/     \:\__\       /:/  /    \/__/      \::/  /     \:\__\      \::/  /     \::/__/     \:\__\     ',
 				\'     ~~          \/__/       \/__/                 \/__/       \/__/       \/__/       ~~          \/__/     ',
         \ '',
 				\]

let s:footer = [
                  \ '                     +-------------------------------------------+',
                  \ '                     |              CodeIsLife                   |',
                  \ '                     |    Talk is cheap Show me the code         |',
                  \ '                     |                                           |',
                  \ '                     |           GitHub:DenisWritesCode          |',
                  \ '                     +-------------------------------------------+',
                  \ ]

function! s:center(lines) abort
      let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
      let centered_lines = map(copy(a:lines),
                        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
      return centered_lines
endfunction

let g:startify_custom_header = s:center(s:header)
let g:startify_custom_footer = s:center(s:footer)
