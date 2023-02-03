vim.cmd [[colorscheme catppuccin]]
-- vim.cmd [[colorscheme tokyonight]]
-- require("tokyonight").setup({
--     style = "dark",
--     -- light_style = "day",
--     transparent = true,
--     -- terminal_colors = true,
--     styles = {
--         comments = { italic = true },
--         keywords = { italic = true },
--         functions = {},
--         variables = {},
--         sidebars = "transparent",
--         floats = "transparent",
--     },
--     sidebars = { "qf", "help" },
--     day_brightness = 0.3,
--     hide_inactive_statusline = false,
--     dim_inactive = false,
--     lualine_bold = false,
--     on_colors = function(colors) end,
--     on_highlights = function(highlights, colors) end,
-- })

require("catppuccin").setup({
    background = {
        dark = "mocha"
    },
    transparent_background = true,
    term_colors = true,
    integrations = {
        cmp       = true,
        gitsigns  = true,
        nvimtree  = true,
        telescope = true,
        notify    = false,
        mini      = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

