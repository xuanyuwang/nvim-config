return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        keys = {
            { "<C-n>", "<cmd>NvimTreeFindFileToggle<cr>", mode = "n", desc = "File explorer: Toggle and focus" },
        },
        config = function()
            local function my_on_attach(bufnr)
                local api = require "nvim-tree.api"

                local function opts(desc)
                    return { desc = "Explorer: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
                end

                -- default mappings
                api.config.mappings.default_on_attach(bufnr)

                -- custom mappings
                vim.keymap.set('n', '/', api.live_filter.start, opts('Filter'))
            end
            require("nvim-tree").setup({
                on_attach = my_on_attach,
                view = {
                    width = {
                        max = -1,
                    }
                }
            })
        end,
    },
}
