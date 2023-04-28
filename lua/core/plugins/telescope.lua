return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'sharkdp/fd',
            {
                "nvim-telescope/telescope-file-browser.nvim",
                keys = {
                    { '<leader>fe', ':Telescope file_browser<CR>', desc='Open telescope file browser' },
                    {
                        '<leader>fce',
                        ':Telescope file_browser path=%:p:h select_buffer=true<CR>',
                        desc='Open telescope file browser with the path of the current buffer'
                    },
                },
            }
        },
        keys = {
            { '<leader>ff', ':Telescope find_files<CR>' },
            { '<leader>fg', ':Telescope live_grep<CR>' },
            { '<leader>fb', ':Telescope buffers<CR>' },
            { '<leader>fh', ':Telescope help_tags<CR>' },
        },
        cmd = { "Telescope" },
        config = function()
            require("telescope").setup {
                extensions = {
                    file_browser = {
                        theme = "ivy", -- dropdown, cursor, ivy, floating
                        -- disables netrw and use telescope-file-browser in its place
                        hijack_netrw = true,
                        mappings = {
                            ["i"] = {
                                -- your custom insert mode mappings
                            },
                            ["n"] = {
                                -- your custom normal mode mappings
                            },
                        },
                    },
                },
            }
            -- To get telescope-file-browser loaded and working with telescope,
            -- you need to call load_extension, somewhere after setup function:
            require("telescope").load_extension "file_browser"
        end

    }
}
