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

"Instalar plugins con vim-plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
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
"----- Sintaxis
"Autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Temas
Plug 'arcticicestudio/nord-vim'
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
nnoremap <c-t> :split<CR>:ter<CR>
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
"-----------------------------------------------------------------------------------------
"-----------------------------------------------------------------------------------------
" Configuración de Airline
"-----------------------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1 "Agregar barra superior
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 1

" Coc
"let g:coc_disable_startup_warning = 1
"-----------------------------------------------------------------------------------------
" Configuración del tema
"-----------------------------------------------------------------------------------------
set termguicolors  "Activa true colors en la terminal
set background=dark  "Fondo del tema: light o dark
colorscheme nord  "Nombre del tema
