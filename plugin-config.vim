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
" lua << END
" require('nvim_comment').setup()
" END

" -----------------------------------------------------------------------------------------
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

" Vim Visual Multi
let g:VM_mouse_mappings = 1

" Vim close tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.blade.php'
