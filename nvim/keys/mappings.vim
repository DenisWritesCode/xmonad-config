" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" Denis

" Limelight
nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)

" Goyo integration
map <leader>goyo :Goyo<CR>
map <leader>ll :Limelight!!<CR>

" NERDTree
nmap <C-f> :NERDTreeToggle<CR>
imap <C-f> :NERDTreeToggle<CR>

" Toggle highlight search
" nnoremap <c-h> :set hlsearch!<cr>

" Accustom miself to vim. By disabling arrow keys.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>


" Coc Navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

" Do whatever is suggested by Coc
nmap <leader>do <Plug>(coc-codeaction)
" Rename Symbol
nmap <leader>rn <Plug>(coc-rename)

" NERDCommenter
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

" Format doc
map <F7> gg=G<C-o><C-o>


" Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Change layout to Dvorak
imap ht <Esc>

" Remapping navigation to be friendlier with Dvorak
nnoremap d h
nnoremap h j
nnoremap t k
nnoremap n l
nnoremap ee dd
nnoremap y t
nnoremap Y T
nnoremap e d

" Remapping b --> n in normal mode (for navigation in search)
nnoremap b n
nnoremap B N

" Remapping window navigation
nnoremap <S-Right> <C-W>l
nnoremap <S-Left> <C-W>h
nnoremap <S-Down> <C-W>j
nnoremap <S-Up> <C-W>k

" Easier command typing for Dvorak
nnoremap ; :
nnoremap : ;
