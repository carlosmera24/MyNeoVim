return {
  {
    'junegunn/fzf',
    keys = {
      { "<leader>t", ":FZF<CR>" } --Abrir con leader+t
    }
  },
  {
    'junegunn/fzf.vim',
    keys = {
      -- Abrir Rg busqueda con leader+F (leader+Shift+f)
      { "<leader>F", ':Rg<CR>' }
    }
  }
}
