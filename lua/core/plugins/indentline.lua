return {
  {
    'yggdroot/indentline',
    config = function()
      -- Deshabilitado para archivos JSON y Mardown
      vim.g.vim_json_conceal = 0
      vim.g.markdown_syntax_conceal = 0
    end
  }
}
