call plug#begin('~/.local/share/nvim/plugged')
Plug 'yggdroot/indentline'
Plug 'tpope/vim-fugitive'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'lfv89/vim-interestingwords'
Plug 'airblade/vim-gitgutter'
Plug 'chrisbra/colorizer'
" Plug 'arnar/vim-matchopen'

" LuaLine status bar
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
"_____ LuaLine status bar

" BufLine (No requerido si se usa AirLine, ya que en la configuración se puede
" agregar el tab superior)
Plug 'ap/vim-buftabline'

" AirLine
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"_____ AirLine status bar

" Nerd Tree
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"----- Nerd Tree

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"----- FZF

" Sintaxis
Plug 'posva/vim-vue'
Plug 'jwalton512/vim-blade'
Plug 'noahfrederick/vim-laravel'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'StanAngeloff/php.vim'
Plug 'sheerun/vim-polyglot'
"Plug 'guenti/vim-php-cs-fixer'
"----- Sintaxis

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag' 
Plug 'tpope/vim-surround'

" Comentar 
" Plug 'terrortylor/nvim-comment'
Plug 'tpope/vim-commentary'
Plug 'suy/vim-context-commentstring'
" ----- Comentar

" Autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Multiples cursores en selcción
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"Temas
Plug 'arcticicestudio/nord-vim'
" Plug 'cocopon/iceberg.vim'
" Plug 'joshdick/onedark.vim'
" Plug 'gosukiwi/vim-atom-dark'
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'w0ng/vim-hybrid'
call plug#end()
