" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Indent guidelines
    Plug 'yggdroot/indentline'

    "Limelight + Goyo
    Plug 'junegunn/limelight.vim'
    Plug 'junegunn/goyo.vim'

    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Autocomplete
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    " Typescript
    Plug 'leafgarland/typescript-vim'
    Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
    Plug 'pangloss/vim-javascript'

    " Ranger plugins
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    " Commenter
    Plug 'tpope/vim-commentary'

    " fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    " Startify
    Plug 'mhinz/vim-startify'

    " Git intergration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " Sneak - Jump in text
    Plug 'justinmk/vim-sneak'

    " Quick-Scope
    Plug 'unblevable/quick-scope'

    " Remember Keybindings
    Plug 'liuchengxu/vim-which-key'

    " Floaterm
    Plug 'voldikss/vim-floaterm'

    " Snippets
    Plug 'honza/vim-snippets'

    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
    " Brackets colorizer
    Plug 'junegunn/rainbow_parentheses.vim'

    " Colorscheme
    Plug 'morhetz/gruvbox'
    Plug 'arcticicestudio/nord-vim'
    Plug 'joshdick/onedark.vim'
    Plug 'sonph/onehalf', { 'rtp': 'vim' } " one half

    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
            \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
            \|   PlugInstall --sync | q
            \| endif
