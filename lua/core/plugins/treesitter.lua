return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- last release is way too old and doesn't work on Windows
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      -- "nvim-treesitter/nvim-treesitter-textobjects"
    },
    keys = {
      { "<c-space>", desc = "Increment selection" },
      { "<bs>", desc = "Decrement selection", mode = "x" },
    },
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
        disable = { "python" }
      },
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
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
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = "<nop>",
          node_decremental = "<bs>",
        },
      },
    },
    config = function(_,opts)
      require("nvim-treesitter.configs").setup(opts)
    end
  },
  -- Mejorar la integración de los comentarios en conjunto con vim-commentary (../plugins/commentary.lua)
  {
    'JoosepAlviste/nvim-ts-context-commentstring',
    keys = {
      { 'gcc', mode = { "n", "v" } }
    },
    config = function()
      require('nvim-treesitter.configs').setup({
        context_commentstring = {
          enable = true
        }
      })
    end
  },
}
