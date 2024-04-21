return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
        require("catppuccin").setup({
            integrations = {
                gitsigns = true,
                neotree = true,
                telescope = {
                    enabled = true,
                },
                treesitter = true,
                mason = true,
            }
        })
		vim.cmd.colorscheme "catppuccin"
	end
}
