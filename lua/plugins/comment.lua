return {
	"lucastavaresa/SingleComment.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	version = "*",
	-- keys = {
	-- 	{ "<leader>x", require("SingleComment").SingleComment, mode = { "n" }, desc = "Comment: Toggle", expr = true },
	-- 	{ "<leader>x", require("SingleComment").Comment, mode = { "v" }, desc = "Comment: Block" },
	-- },
	config = function()
		vim.keymap.set("n", "<leader>x", require("SingleComment").SingleComment, { expr = true, desc = "Comment: Toggle" })
		vim.keymap.set("v", "<leader>x", require("SingleComment").Comment, {desc = "Comment: Selected lines"})
	end,
}
