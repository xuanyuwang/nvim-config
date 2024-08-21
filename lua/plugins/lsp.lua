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
            { "K",          vim.lsp.buf.hover,       mode = "n",          desc = "LSP: Definition" },
            { "gd",         vim.lsp.buf.definition,  mode = { "n", "v" }, desc = "LSP: Definition" },
            { "<leader>ca", vim.lsp.buf.code_action, mode = { "n", "v" }, desc = "LSP: Code actions" },
            { "<leader>rn", vim.lsp.buf.rename,      mode = { "n" },      desc = "LSP: Rename variable" },
        },
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local on_attach = function(client, bufnr)
                require("lsp-format").on_attach(client, bufnr)
            end
            local servers = { "lua_ls", "gopls" }

            for _, server in ipairs(servers) do
                lspconfig[server].setup({
                    capabilities = capabilities,
                    on_attach = on_attach,
                })
            end
        end,
    },
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
