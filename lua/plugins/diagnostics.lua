return {
    {
        "folke/trouble.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        keys = {
            {
                "<leader>qq",
                "<CMD>Trouble diagnostics toggle filter = { severity=vim.diagnostic.severity.ERROR, buf=0 }<CR>",
                mode = "n",
                desc = "Diagnostics: Toggle for current document",
            },
            {
                "<leader>qf",
                "<CMD>Trouble quickfix toggle<CR>",
                mode = "n",
                desc = "Diagnostics: Toggle for quickfix",
            },
        },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },
}
