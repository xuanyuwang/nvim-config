return {
	"nvimtools/none-ls.nvim",
    keys = {
        {
            "<leader>gf", vim.lsp.buf.format,
            mode = "n",
            desc = "Format file"
        }
    },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.gofumpt,
                null_ls.builtins.formatting.goimports_reviser,
			},
		})
	end,
}
