return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
              pickers = {
    find_files = {
      theme = "ivy",
    },
    git_files = {
      theme = "ivy",
    }
  },

        })
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps',function()
	builtin.grep_string({search = vim.fn.input("grep > ")});
end)


	end,
}
