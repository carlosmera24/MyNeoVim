return {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { 
        -- lualine usa "kyazdani42/nvim-web-devicons",
        "nvim-tree/nvim-web-devicons"
    },
    keys = {
        -- Apertura del explorador de forma flotante en modo normal
        { '-', ':Oil --float<CR>', mode = { "n" }, desc = "Open parent directory" },
    },
    cmd = { "Oil" },
    config = function()
        require("oil").setup()
    end
}
