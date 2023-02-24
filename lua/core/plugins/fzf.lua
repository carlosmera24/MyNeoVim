return {
  {
    'junegunn/fzf',
    dependencies = 'junegunn/fzf.vim',
    keys = {
      --Abrir con leader+t
      { "<leader>t", ":FZF<CR>" },
      -- Abrir Rg busqueda con leader+F (leader+Shift+f)
      { "<leader>F", ':Rg<CR>' }
    }
  }
}
