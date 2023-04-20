return {
    {
        "nvim-treesitter/nvim-treesitter",
        version = false, -- last release is way too old and doesn't work on Windows
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        dependencies = {
            'JoosepAlviste/nvim-ts-context-commentstring',
            -- "nvim-treesitter/nvim-treesitter-textobjects"
        },
        keys = {
            { "<c-space>", desc = "Increment selection" },
            { "<bs>", desc = "Decrement selection", mode = "x" },
        },
        opts = {
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = true,
            },
            indent = {
                enable = true,
                disable = { "python" }
            },
            context_commentstring = {
                enable = true,
                enable_autocmd = true,
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = "<nop>",
                    node_decremental = "<bs>",
                },
            },
            ensure_installed = {
                -- c, lua, vim son parte de la funcionalidad de neovim, requeridos e indispensables
                "c",
                "css",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown_inline",
                "php",
                "scss",
                "typescript",
                "vim",
                "vue",
            },
        },
        config = function(_,opts)
            require("nvim-treesitter.configs").setup(opts)
        end
    },
}
