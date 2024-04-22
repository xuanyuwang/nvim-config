local bufferMapping = {
	["<leader>b"] = {
		name = "+buffer",
		x = { "<cmd>bdelete<CR>", "Buffer: delete" },
	},
}

return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 200
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		local wk = require("which-key")
		wk.register(bufferMapping)
	end,
}
