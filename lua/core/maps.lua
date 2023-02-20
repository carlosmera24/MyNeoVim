-- -----------------------------------------------------------------------------------------
-- Comandos y atajos de teclado personalizados
-- -----------------------------------------------------------------------------------------
local map = vim.api.nvim_set_keymap
local options = { noremap = true }
local cmd_options = { noremap = true, silent = true }
-- Tecla líder
map('n', '<Space>', '', {})
-- Recargar configuración
--map('n', '<C-F5>', ':source %<CR>', noremap)
-- Guardar usando Leader+w
map('n', '<leader>w', ':w<CR>', options)
-- Salir usando Leader+q
map('n', '<leader>q', ':q<CR>', options)
-- Abrir terminal con Ctrl+t
map('n', '<c-t>', ':vertical<CR>:ter<CR>', options)
-- -------- NerdTree -------------------------------------------------
--nnoremap <leader>e :NERDTreeFocus<CR>
--nnoremap <C-e> :NERDTree<CR>
-- Cerrar Explorar NerdTree Shift+
--nnoremap <S-e> :NERDTreeToggle<CR>
--nnoremap <C-f> :NERDTreeFind<CR>
-- -------- Bufer - Movimiento entre archivos abiertos ----------------
-- Siguiente archivo (:BNext) Shift+Tab
map('n', '<S-Tab>', ':bn<CR>', options)
-- Anterior Archivo (:BPrevious) Leader+Tab
map('n', '<leader><Tab>', ':bp<CR>', options)
-- Anterior Archivo (:BDelete) Leader+Backspace
map('n', '<leader><BS>', ':bd<CR>', options)
-- Abrir FZF con Leader+t 
--map('n', '<leader>t', ':FZF<CR>', options)
-- Abrir Rg busqueda con leader+F (leader+Shift+f)
--map('n', '<leader>F', ':Rg<CR>', options)
-- -------- Vim Visual Multi -------------------------------------------
-- Selección con flechas, por defecto usa Ctrl+Up/Down, pero no funciona en
-- Kitty con split habilitado, entonces lo cambio a Alt+Up/Down
--let g:VM_maps = {}
--let g:VM_maps["Add Cursor Down"] = '<A-Down>'
--let g:VM_maps["Add Cursor Up"] = '<A-Up>'
