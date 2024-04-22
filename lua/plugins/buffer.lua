return {
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
                "S-<Tab>",
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
    -- {
    -- 	"romgrk/barbar.nvim",
    -- 	lazy = false,
    -- 	dependencies = {
    -- 		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
    -- 		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    -- 	},
    -- 	init = function()
    -- 		vim.g.barbar_auto_setup = false
    -- 	end,
    -- 	version = "^1.0.0", -- optional: only update when a new 1.x version is released

    -- 	keys = {
    -- 		{
    -- 			"<Tab>",
    -- 			"<Cmd>BufferNext<CR>",
    -- 			mode = "n",
    -- 			desc = "Buffer: Next",
    -- 			noremap = true,
    -- 			silent = true,
    -- 		},
    -- 		{
    -- 			"S-<Tab>",
    -- 			"<Cmd>BufferPrevious<CR>",
    -- 			mode = "n",
    -- 			desc = "Buffer: Previous",
    -- 			noremap = true,
    -- 			silent = true,
    -- 		},
    -- 	},

    -- 	config = function()
    -- 		require("barbar").setup({
    -- 			opts = {
    -- 				-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    -- 				animation = true,
    -- 			},
    -- 		})
    -- 	end,
    -- },
}
