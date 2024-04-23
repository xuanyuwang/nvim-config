return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "gopls",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        keys = {
            { "K",          vim.lsp.buf.hover,       mode = "n",        desc = "LSP: Definition" },
            { "gd",         vim.lsp.buf.definition,  mode = { "n", "v" }, desc = "LSP: Definition" },
            { "<leader>ca", vim.lsp.buf.code_action, mode = { "n", "v" }, desc = "LSP: Code actions" },
            { "<leader>rn", vim.lsp.buf.rename,      mode = { "n" },    desc = "LSP: Rename variable" },
        },
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({})
            lspconfig.gopls.setup({})
        end,
    },
    {
        "folke/trouble.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        keys = {
            {"<leader>q", "<CMD>TroubleToggle<CR>", mode = "n", desc = "Diagnostics: Toggle"}
        },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    }
}
