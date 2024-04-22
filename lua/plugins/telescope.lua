local builtin = require("telescope.builtin")
return {
    {
        -- fuzzy find files
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        -- or                              , branch = '0.1.x',
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            { "<C-p>",      builtin.find_files,  mode = "n", desc = "Search: File" },
            { "<leader>fs", builtin.live_grep,   mode = "n", desc = "Search: string in CWD" },
            { "<leader>ft", builtin.colorscheme, mode = "n", desc = "Search: Colorscheme" },
            { "<leader>gs", builtin.git_status,  mode = "n", desc = "Git: status" },
        },
    },
    {
        -- offers intelligent prioritization when selecting files from your editing history
        "nvim-telescope/telescope-frecency.nvim",
        config = function()
            require("telescope").load_extension("frecency")
        end,
    },
}
