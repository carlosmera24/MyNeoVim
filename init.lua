vim.opt.syntax = "on"

vim.opt.number = true --Numero de líenas
vim.opt.title = true --Muestra el nombre del archivo en la ventana del terminal
--vim.opt.mouse = true --Habilita la integración del mouse para selección o mover

vim.opt.wrap = false --No divide la line si el texto es muy grande
vim.opt.cursorline = true --Resalta la linea actual
vim.opt.colorcolumn = "120" --Muestra la columna límite a 120 caracteres
--Color de la columna anterior, aplic cuando se define el tema:
--vim.opt.highlight = "ColoColumn ctermbg=0 guibg=lightgrey"

vim.opt.sw = 2 --Identación más pequeña
vim.opt.smartindent = true --Al saltar tabula automaticamente en código

vim.opt.rnu = true --Numero de líenas relativas, indica a partir de la línea numero hacia arriba y abajo
vim.opt.numberwidth = 1 --Tamaño del numero de líneas

vim.opt.swapfile = false --Evitar errores con algunos archivos referentes al archivo swap
vim.opt.backup = false --Sin copia de seguridad

-- Indentación a 2 espacios
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.shiftround = true
vim.opt.expandtab = true --Insertar espacios en lugar de <Tab>s

vim.opt.hidden = true --Permitir cambiar de buffers sin tener que guardarlos

vim.opt.ignorecase = true --Ignorar mayúsculas al hacer una búsqueda
vim.opt.smartcase  = true --No ignorar mayúsculas si la palabra a buscar contiene mayúsculas

vim.opt.clipboard = "unnamedplus" --Integrar la copia con el portapapeles, alternativo unnamed

vim.opt.encoding = "UTF-8" --Permitir caracteres especiales
vim.opt.spelllang = "en,es"  --Corregir palabras usando diccionarios en inglés y español

-- Solucionar problemas con la sintaxis en arvhivos grandes
--vim.opt.redrawtime = 10000
--vim.opt.syntax = "sync fromstart"
--vim.opt.re = 1

--Instalar plugins con vim-plug
--El archivo está en la misma carpeta de este archivo
--so ~/.config/nvim/plugins.vim
-- Configuración de los plugins o necesaria de los mismos
--so ~/.config/nvim/plugin-config.vim

-- Maps/Atajos del teclado
--so ~/.config/nvim/maps.vim

-------------------------------------------------------------------------------------------
-- Configuración del tema
-------------------------------------------------------------------------------------------
vim.opt.termguicolors = true  --Activa true colors en la terminal
-- ---- Nord
vim.opt.background = "dark"  --Fondo del tema: light o dark
-- colorscheme nord  --Nombre del tema
-- ---- Iceberg.vim
-- colorscheme iceberg  
-- ---- OneDark
-- colorscheme onedark  --Nombre del tema
-- ---- AtomDark
-- colorscheme atom-dark  --Nombre del tema
-- ---- Dracula
-- colorscheme dracula
------ VimHybrid
-- vim.opt.background=dark
-- colorscheme hybrid  --Nombre del tema
-- let g:hybrid_custom_term_colors = 1
