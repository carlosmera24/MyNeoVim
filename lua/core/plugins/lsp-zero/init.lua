return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    },
    config = function()
      local lsp = require('lsp-zero').preset({
        name = 'minimal',
        set_lsp_keymaps = true,
        manage_nvim_cmp = true,
        suggest_lsp_servers = false,
      })
      lsp.setup()

      local mason = require("mason")
      mason.setup()

      local lspconfig = require("lspconfig")
      local mason_servers = {}
      local servers = require("core.plugins.lsp-zero.servers")

      -- Verificar si el servidor esta instalado, sino lo agrega al listado para ser instalado
       for server, _ in pairs(servers) do
         local cmd = lspconfig[server].document_config.default_config.cmd[1]
         if vim.fn.executable(cmd) == 0 then
           table.insert(mason_servers, server)
         end
       end

      local mason_lspconfig = require "mason-lspconfig"
      mason_lspconfig.setup{
        ensure_installed = mason_servers 
      }

    end
  }
}
