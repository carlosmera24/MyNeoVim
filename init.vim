syntax on

set number "Numero de líenas
set title "Muestra el nombre del archivo en la ventana del terminal
set mouse=a "Habilita la integración del mouse para selección o mover

set nowrap "No divide la line si el texto es muy grande
set cursorline "Resalta la linea actual
set colorcolumn=120 "Muestra la columna límite a 120 caracteres
"Color de la columna anterior, aplic cuando se define el tema:
highlight ColoColumn ctermbg=0 guibg=lightgrey

set sw=2 "Identación más pequeña
set smartindent "Al saltar tabula automaticamente en código

set rnu "Numero de líenas relativas, indica a partir de la línea numero hacia arriba y abajo
set numberwidth=1 "Tamaño del numero de líneas

set noswapfile "Evitar errores con algunos archivos referentes al archivo swap
set nobackup "Sin copia de seguridad

" Indentación a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab  "Insertar espacios en lugar de <Tab>s

set hidden  "Permitir cambiar de buffers sin tener que guardarlos

set ignorecase  "Ignorar mayúsculas al hacer una búsqueda
set smartcase  "No ignorar mayúsculas si la palabra a buscar contiene mayúsculas

set clipboard=unnamedplus "Integrar la copia con el portapapeles, alternativo unnamed

set encoding=UTF-8 "Permitir caracteres especiales
set spelllang=en,es  "Corregir palabras usando diccionarios en inglés y español

" Solucionar problemas con la sintaxis en arvhivos grandes
set redrawtime=10000
syntax sync fromstart
set re=1

"Instalar plugins con vim-plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'yggdroot/indentline'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'lfv89/vim-interestingwords'
Plug 'airblade/vim-gitgutter'
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
"Plug 'guenti/vim-php-cs-fixer'
"----- Sintaxis
" Comentar 
Plug 'terrortylor/nvim-comment'
" Autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Multiples cursores en selcción
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"Temas
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'w0ng/vim-hybrid'
call plug#end()

"-----------------------------------------------------------------------------------------
" Comandos y atajos de teclado personalizados
"-----------------------------------------------------------------------------------------
"Tecla líder
let mapleader = " "
"Recargar configuración
nmap <F5> :source %<CR>
vmap <F5> :source %<CR>
"Guardar usando Leader+w
nnoremap <leader>w :w<CR>
"Abrir terminal con Ctrl+t
nnoremap <c-t> :vertical<CR>:ter<CR>
"-------- NerdTree -------------------------------------------------
nnoremap <leader>e :NERDTreeFocus<CR>
nnoremap <C-e> :NERDTree<CR>
" Cerrar Explorar NerdTree Shift+
nnoremap <S-e> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
"-------- Bufer - Movimiento entre archivos abiertos ----------------
" Siguiente archivo (:BNext) Shift+Tab
nnoremap <S-Tab> :bn<CR>
" Anterior Archivo (:BPrevious) Leader+Tab
nnoremap <leader><Tab> :bp<CR>
" Anterior Archivo (:BDelete) Leader+Backspace
nnoremap <leader><BS> :bd<CR>
" Abrir FZF con Leader+t 
nnoremap <leader>t :FZF<CR>
" Vim Visual Multi
let g:VM_mouse_mappings = 1
"-----------------------------------------------------------------------------------------
"-----------------------------------------------------------------------------------------
" Configuración de Airline
"-----------------------------------------------------------------------------------------
"let g:airline#extensions#tabline#enabled = 1 "Agregar barra superior
"let g:airline#extensions#tabline#buffer_nr_show = 1 "Agregar numero de buffer a la barra superior
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#hunks#enabled = 0
"let g:airline#extensions#branch#enabled = 1

"-----------------------------------------------------------------------------------------
" Configuración LuaLine Status Bar
"-----------------------------------------------------------------------------------------
lua << END
require('lualine').setup()
END

"-----------------------------------------------------------------------------------------
" Nvim Comment
"-----------------------------------------------------------------------------------------
lua << END
require('nvim_comment').setup()
END

"-----------------------------------------------------------------------------------------
"Configuración BufTabLine
"-----------------------------------------------------------------------------------------
let g:buftabline_numbers = 1 "Numero del buffer
let g:buftabline_indicators = 1 "Indicador de modificación
let g:buftabline_separators = 1 "Separador
" Solución para archivos php lentos
let g:loaded_matchparen = 1
"-----------------------------------------------------------------------------------------
" Folding, activar como indent y permitir el uso manual para crear nuevos
"-----------------------------------------------------------------------------------------
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END

"-----------------------------------------------------------------------------------------
" Ajustes de Coc
"-----------------------------------------------------------------------------------------
" Usar Tab para completar 
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"-----------------------------------------------------------------------------------------
" Configuración del tema
"-----------------------------------------------------------------------------------------
set termguicolors  "Activa true colors en la terminal
" ---- Nord
" set background=dark  "Fondo del tema: light o dark
" colorscheme nord  "Nombre del tema
" ---- OneDark
colorscheme onedark  "Nombre del tema
" ---- OneDark
" colorscheme atom-dark  "Nombre del tema
" ---- Dracula
" colorscheme dracula
"---- VimHybrid
" set background=dark
" colorscheme hybrid  "Nombre del tema
" let g:hybrid_custom_term_colors = 1
