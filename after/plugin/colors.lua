-- vim.cmd [[colorscheme catppuccin]]
vim.cmd [[colorscheme moonlight]]
--
-- require("catppuccin").setup({
--     background = {
--         dark = "mocha"
--     },
--     transparent_background = true,
--     term_colors = true,
--     integrations = {
--         cmp       = true,
--         gitsigns  = true,
--         nvimtree  = true,
--         telescope = true,
--         notify    = false,
--         mini      = false,
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--     },
-- })
--



require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'moonlight'
    -- ... your lualine config
  }
}
