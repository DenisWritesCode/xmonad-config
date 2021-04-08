let mapleader="\<Space>"         " The <leader> key

set number relativenumber
set noswapfile " Disable swap files
set backspace=indent,eol,start " Backspace key deletes indent,eol&start of line
set encoding=utf-8  " Declare UTF-8 encoding for all our files
set fileencoding=utf-8                  " The encoding written to file
set pumheight=15          " Makes popup menu smaller
set ruler              		" Show the cursor position all the time
set cmdheight=2           " More space for displaying messages
set iskeyword+=-          " treat dash separated words as a word text object"
set mouse=a               " Enable your mouse
set conceallevel=0               " Show `` in Markdown files

syntax enable			" enable syntax highlighting
filetype plugin indent on	" Enable filetype plugins and indent
set hidden "Buffers can be backgrounded without being hidden
set wrap linebreak " Use gj and gk to move between screen lines
set colorcolumn=80 "Draw column at 80 Characters
set termguicolors  " For good terminal colors
set textwidth=79   " Wrap code at 80 characters
set formatoptions-=l " Trynna wrap this mf lines

" Used to show inivisible characters. Might be useful with Python 
" set list " Show invisible characters
"set listchars=tab:›\ ,eol:¬,trail:⋅ " Set the characters for the invisibles

set showmatch             " Highlight matching braces
set showmode              " Show the current mode on the open buffer
set splitbelow            " Splits show up below by default
set splitright            " Splits go to the right by default

set t_Co=256 							"Use 256 colors

" Tab settings
set tabstop=2     " Tabs width in spaces
set softtabstop=2 " Soft tab width in spaces
set shiftwidth=2  " Amount of spaces when shifting
set showtabline=2 " Always show tabs
set expandtab     " Expand tabs to the proper type and size
set autoindent    " Automatic indentation
set smarttab      " Makes tabbing smarter

set laststatus=0  " Always display the status line
set cursorline        " Enable highliting of the current line
set background=dark " Tell vim what background is
set noshowmode              " Don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
"set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus       " Copy paste between vim and everything else
"set autochdi   " Your working directory always the same as working directory

" Searching
set incsearch
set nohlsearch

" Center cursor in the screen
" Use *au! VCenterCursor * to toggle this setting off
set scrolloff=15


au! BufWritePost $MYVIMRC source % 
" auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %

" Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
