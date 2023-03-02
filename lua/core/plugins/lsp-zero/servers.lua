-- local lsp_attach = require("core.plugins.lsp-zero.maps") 

local lsp_flags = {
  debounce_text_changes = 150,
}

local default = function()
  return {
    -- on_attach = lsp_attach,
    flags = lsp_flags,
  }
end

return {
  ["lua_ls"] = function()
    return {
      -- on_attach = lsp_attach,
      flags = lsp_flags,
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          telemetry = {
            enable = false,
          },
        },
      },
    }
  end,
  -- ["emmet_ls"] = function()
  --   local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

  --   return {
  --     -- on_attach = lsp_attach,
  --     flags = lsp_flags,
  --     capabilities = capabilities,
  --     filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "blade", "vue" },
  --   }
  -- end,
}
