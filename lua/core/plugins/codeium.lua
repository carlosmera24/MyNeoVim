return {
    {
       'Exafunction/codeium.vim',
        event = 'BufEnter',
        keys = {
            --Reemplzar TAB
            -- { '<C-s>', mode = { "i" }, desc = "Insert suggestion" },
            { "<C-]>", mode = { "i" } },
            { "<M-]>", mode = { "i" } },
            { "<M-[>", mode = { "i" } },
            { "<M-Bslash>", mode = { "i" }  },
        },
        config = function ()
            -- Deshabilitar completamente el uso de TAB
            vim.g.codeium_no_map_tab = 1
            vim.g.codeium_disable_bindings = 1

            -- Reemplazar TAB autocompletado
            vim.keymap.set('i', '<C-s>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
            -- vim.keymap.set('i', '<M-]>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
            -- vim.keymap.set('i', '<M-,[>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
            -- vim.keymap.set('i', '<c-]>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
        end
    }
}
