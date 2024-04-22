return {
    'stevearc/aerial.nvim',
    opts = {
        max_width = 0.6
    },
    -- Optional dependencies
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    },
    keys = {
        {"<leader>a", "<cmd>AerialToggle!<CR>", mode = "n", desc = "Outline: Toggle"}
    }
}
