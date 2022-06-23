"-----------------------------------------------------------------------------------------
" Comandos y atajos de teclado personalizados
"-----------------------------------------------------------------------------------------
"Tecla líder
let mapleader = " "
"Recargar configuración
nmap <F5> :source %<CR>
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
" Abrir Rg busqueda con leader+F (leader+Shift+f)
nnoremap <leader>F :Rg<CR>
