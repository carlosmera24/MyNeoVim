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
"El archivo está en la misma carpeta de este archivo
so ~/.config/nvim/plugins.vim
" Configuración de los plugins o necesaria de los mismos
so ~/.config/nvim/plugin-config.vim

" Maps/Atajos del teclado
so ~/.config/nvim/maps.vim

"-----------------------------------------------------------------------------------------
" Configuración del tema
"-----------------------------------------------------------------------------------------
set termguicolors  "Activa true colors en la terminal
" ---- Nord
set background=dark  "Fondo del tema: light o dark
colorscheme nord  "Nombre del tema
" ---- Iceberg.vim
" colorscheme iceberg  
" ---- OneDark
" colorscheme onedark  "Nombre del tema
" ---- AtomDark
" colorscheme atom-dark  "Nombre del tema
" ---- Dracula
" colorscheme dracula
"---- VimHybrid
" set background=dark
" colorscheme hybrid  "Nombre del tema
" let g:hybrid_custom_term_colors = 1
