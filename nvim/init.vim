" Goal of vim is to spend most time in normal mode than visual mode.
" Aim to complete your edit in a single command. Allows for easy repetition.

source $HOME/.config/nvim/vim-plug/plugins.vim " Handles our plugins install
source $HOME/.config/nvim/general/settings.vim " General settings of the editor
source $HOME/.config/nvim/keys/mappings.vim    " Keyboard mappings
source $HOME/.config/nvim/keys/which-key.vim " Vim Which-Key
source $HOME/.config/nvim/themes/gruvbox.vim   " Current theme
source $HOME/.config/nvim/themes/airline.vim   " Theme to use for airline
source $HOME/.config/nvim/plug-config/goyolimelight.vim "Config for goyo & limelight
source $HOME/.config/nvim/plug-config/coc.vim  " Conqueror Of Completion
source $HOME/.config/nvim/plug-config/rnvimr.vim " Ranger in NeoVim
source $HOME/.config/nvim/plug-config/fzf.vim    " FZF
source $HOME/.config/nvim/plug-config/rainbow-paren.vim " Settings for rainbow-parentheses
source $HOME/.config/nvim/plug-config/start-screen.vim  " Startify settings
source $HOME/.config/nvim/plug-config/signify.vim  " Signify Git
source $HOME/.config/nvim/plug-config/sneak.vim  " Sneak - Jump around words
source $HOME/.config/nvim/plug-config/quickscope.vim " Quickscope
source $HOME/.config/nvim/plug-config/floaterm.vim  " Floatterm
source $HOME/.config/nvim/plug-config/snippets.vim " Vim Snippets 
source $HOME/.config/nvim/plug-config/indentLine.vim " Vim Indent 
"luafile $HOME/.config/nvim/lua/colorizer.lua " Color highlight
lua require 'plug-colorizer'

set fo-=l;
