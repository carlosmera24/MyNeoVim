return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            -- oil usa nvim-tree/nvim-web-devicons 
            "kyazdani42/nvim-web-devicons",
        },
        config = function()
            require("lualine").get_config()
            require("lualine").setup()
        end
    },
}
