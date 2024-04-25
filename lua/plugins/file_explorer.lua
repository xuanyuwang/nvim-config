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
				local api = require("nvim-tree.api")

				-- local function opts(desc)
				-- 	return { desc = "File explorer: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
				-- end

				-- default mappings
				api.config.mappings.default_on_attach(bufnr)

				-- vim.keymap.set("n", "<C-n>", api.tree.toggle, opts("Open and focus"))
				-- vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
			end
			-- pass to setup along with your other options
			require("nvim-tree").setup({
				---
				on_attach = my_on_attach,
				---
			})
		end,
	},
}
