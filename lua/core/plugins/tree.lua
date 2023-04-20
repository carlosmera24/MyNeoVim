return {
    {
        'nvim-tree/nvim-tree.lua',
        config = function()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
            vim.g.termguicolors = true

            require("nvim-tree").setup({
                sort_by = "case_sensitive",
                renderer = {
                    group_empty = true,
                },
                filters = {
                    dotfiles = true,
                },
            })
        end,
        keys = {
            { "<leader>e", ":NvimTreeFocus<CR>" },
            { "<C-e>", ":NvimTreeToggle<CR>" }, --Abrir/Cerrar Explorar NerdTree Shift+      
            { "<C-f>", ":NvimTreeFindFile<CR>" },
            { "<A-e>", ":NvimTreeCollapse<CR>" }, --Cerrar recursivamente       
        }
    }
}
