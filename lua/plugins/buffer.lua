return {
    {
        "echasnovski/mini.bufremove",
        version = "*",
        keys = {
            { "<leader>bx", ":lua MiniBufremove.delete()", mode = { "n", "v" }, desc = "Buffer: close" }
        },
        config = function()
            require("mini.bufremove").setup()
        end,
    },
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        keys = {
            {
                "<Tab>",
                "<Cmd>BufferLineCycleNext<CR>",
                mode = "n",
                desc = "Buffer: Next",
                noremap = true,
                silent = true,
            },
            {
                "<S-Tab>",
                "<Cmd>BufferLineCyclePrev<CR>",
                mode = "n",
                desc = "Buffer: Previous",
                noremap = true,
                silent = true,
            },
        },
        config = function()
            vim.opt.termguicolors = true
            require("bufferline").setup({})
        end,
    },
}
