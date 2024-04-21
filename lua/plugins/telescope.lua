return {
	{
		-- fuzzy find files
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		-- or                              , branch = '0.1.x',
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find files" })
			vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Search in cwd" })
			vim.keymap.set("n", "<leader>ft", builtin.colorscheme, { desc = "Colorscheme" })
			vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Git status" })
		end,
	},
	-- 	{
	-- 		"nvim-telescope/telescope-ui-select.nvim",
	-- 		config = function()
	-- 			-- This is your opts table
	-- 			require("telescope").setup({
	-- 				extensions = {
	-- 					["ui-select"] = {
	-- 						require("telescope.themes").get_dropdown({}),
	-- 					},
	-- 				},
	-- 			})
	-- 			-- To get ui-select loaded and working with telescope, you need to call
	-- 			-- load_extension, somewhere after setup function:
	-- 			require("telescope").load_extension("ui-select")
	-- 		end,
	-- 	},
	{
		-- offers intelligent prioritization when selecting files from your editing history
		"nvim-telescope/telescope-frecency.nvim",
		config = function()
			require("telescope").load_extension("frecency")
		end,
	},
}
