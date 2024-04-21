return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
	      local builtin = require("telescope.builtin")
	      vim.keymap.set("n", "<C-p>", builtin.find_files, {desc = "Find files"})
	      vim.keymap.set("n", "<leader>fs", builtin.live_grep, {desc = "Search in cwd"})
	      vim.keymap.set("n", "<leader>ft", builtin.colorscheme, {desc = "Colorscheme"})
	      vim.keymap.set("n", "<leader>gs", builtin.git_status, {desc = "Git status"})
      end
    }
