return {
  {
    'neoclide/coc.nvim',
    branch = 'release',
    ft = { 'php', 'javascript', 'js', 'blade', 'vue', 'css' },
    config = function()
      local keyset = vim.keymap.set
      -- Use Tap para completar
      local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
      keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
      keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)


      -- Make <CR> to accept selected completion item or notify coc.nvim to format
      -- <C-g>u breaks current undo, please make your own choice
      keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

      function _G.check_back_space()
          local col = vim.fn.col('.') - 1
          return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
      end

      -- Instalar paquetes Coc si no están instalados aún
      local cocPath = os.getenv( "HOME" ) .. "/.config/coc/extensions/node_modules/"
      if vim.loop.fs_stat(cocPath) then
        local cocToInstall = ""

        if not vim.loop.fs_stat( cocPath .. "coc-phpls" ) then
          cocToInstall = "coc-phpls"
        end
        if not vim.loop.fs_stat( cocPath .. "coc-eslint" ) then
          cocToInstall = cocToInstall .. " coc-eslint"
        end
        if not vim.loop.fs_stat( cocPath .. "coc-tsserver" ) then
          cocToInstall = cocToInstall .. " coc-tsserver"
        end
        if not vim.loop.fs_stat( cocPath .. "coc-tsserver" ) then
          cocToInstall = cocToInstall .. " coc-tsserver"
        end
        if not vim.loop.fs_stat( cocPath .. "coc-vetur" ) then
          cocToInstall = cocToInstall .. " coc-vetur"
        end
        if not vim.loop.fs_stat( cocPath .. "coc-css" ) then
          cocToInstall = cocToInstall .. " coc-css"
        end
        
        if cocToInstall ~= "" then
          vim.cmd('CocInstall ' .. cocToInstall)
        end
      end
    end
  }
}
