
local lsp_flags = {
  debounce_text_changes = 150,
}

local default = function()
  return {
    flags = lsp_flags,
  }
end

return {
  ["lua_ls"] = function()
    return {
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
  ["jsonls"] = default,
  ["marksman"] = default,
  ["html"] = default,
  ["emmet_ls"] = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

    return {
      flags = lsp_flags,
      capabilities = capabilities,
      filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "blade", "vue" },
    }
  end,
  ["tailwindcss"] = default,
  ["tsserver"] = default,
  ["phpactor"] = function()
    return {
      flags = lsp_flags,
      filetypes = { "php", "cucumber" },
    }
  end,
}
