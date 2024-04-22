return {
    {
        -- fuzzy find files
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        -- or                              , branch = '0.1.x',
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            { "<leader>ff", ":Telescope find_files<CR>",  mode = "n", desc = "Search: File" },
            { "<leader>fs", ":Telescope live_grep<CR>",   mode = "n", desc = "Search: string in CWD" },
            { "<leader>ft", ":Telescope colorscheme<CR>", mode = "n", desc = "Search: Colorscheme" },
            { "<leader>gs", ":Telescope git_status<CR>",  mode = "n", desc = "Git: status" },
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
