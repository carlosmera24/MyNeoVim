return {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {
        -- Definido en lualine
        -- "nvim-tree/nvim-web-devicons"
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
