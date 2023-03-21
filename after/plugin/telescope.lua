require('telescope').setup{
  pickers = {
    find_files = {
      theme = "ivy",
    },
    git_files = {
      theme = "ivy",
    }
  },
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps',function()
	builtin.grep_string({search = vim.fn.input("grep > ")});
end)


