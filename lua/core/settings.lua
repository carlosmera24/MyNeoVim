local opt = vim.opt
local cmd = vim.cmd

opt.syntax = "on"
opt.termguicolors = true  --Activa true colors en la terminal
opt.background = "dark"  --Fondo del tema: light o dark
opt.number = true --Numero de líenas
opt.title = true --Muestra el nombre del archivo en la ventana del terminal
opt.mouse = 'a' --Habilita la integración del mouse para selección o mover
opt.wrap = false --No divide la line si el texto es muy grande
opt.cursorline = true --Resalta la linea actual
opt.colorcolumn = "120" --Muestra la columna límite a 120 caracteres
--Color de la columna limite de escritura
cmd 'highlight ColorColumn ctermbg=0 guibg=lightgrey'
opt.sw = 2 --Identación más pequeña
opt.smartindent = true --Al saltar tabula automaticamente en código
opt.rnu = true --Numero de líenas relativas, indica a partir de la línea numero hacia arriba y abajo
opt.numberwidth = 1 --Tamaño del numero de líneas
opt.swapfile = false --Evitar errores con algunos archivos referentes al archivo swap
opt.backup = false --Sin copia de seguridad

-- Indentación a 2 espacios
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.shiftround = true
opt.expandtab = true --Insertar espacios en lugar de <Tab>s

opt.hidden = true --Permitir cambiar de buffers sin tener que guardarlos
opt.ignorecase = true --Ignorar mayúsculas al hacer una búsqueda
opt.smartcase  = true --No ignorar mayúsculas si la palabra a buscar contiene mayúsculas
opt.clipboard = "unnamedplus" --Integrar la copia con el portapapeles, alternativo unnamed
opt.encoding = "UTF-8" --Permitir caracteres especiales
opt.spelllang = "en,es"  --Corregir palabras usando diccionarios en inglés y español

-- Solucionar problemas con la sintaxis en arvhivos grandes
--vim.opt.redrawtime = 10000
--vim.opt.syntax = "sync fromstart"
--vim.opt.re = 1

-------------------------------------------------------------------------------------------
-- Instalar plugins con Lazy
-------------------------------------------------------------------------------------------
-- Lazy instalación, path ~/.local/share/nvim/lazy/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- preparación de lazy y su configuración
-- Los plugins se define y configurar en lua/core/plugins-settings
if vim.loop.fs_stat(lazypath) then
  vim.g.mapleader = ' '  -- 'vim.g' sets global variables requerido por lazy
  require("lazy").setup("core.plugins-settings",{})
end
