local lsp_flags = {
    debounce_text_changes = 150,
}

local default = function()
    return {
        flags = lsp_flags,
    }
end

return {
    ["emmet_ls"] = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

        return {
            flags = lsp_flags,
            capabilities = capabilities,
            filetypes = {
                "html",
                "php",
                "typescriptreact",
                "javascriptreact",
                "css",
                "sass",
                "scss",
                "less",
                "blade",
                "vue"
            },
            init_options = {
                embeddedLanguages = {
                    blade = "html"
                }
            }
        }
    end,
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
    ["marksman"] = default,--markdown
    ["html"] = default,
    ["svelte"] = default, --css, scss, less, js, html,
    ["tailwindcss"] = default, --css
    ["tsserver"] = default, -- js
    ["volar"] = default, --vue
    ["intelephense"] = default, -- php
    ["phpactor"] = function()
        return {
            flags = lsp_flags,
            filetypes = { "php", "cucumber" },
        }
    end,
}
