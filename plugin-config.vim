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
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"-----------------------------------------------------------------------------------------

" Vim Visual Multi
let g:VM_mouse_mappings = 1

" Vim close tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.blade.php,*.vue'
