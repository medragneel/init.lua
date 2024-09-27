    return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
                options = {
        icons_enabled = false,
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
    },

    sections = {
        lualine_a = {
            "mode",
            {
                file_status = true,
                newfile_status = true,
                shorting_target = 40,
                path = 0,
                symbols = {
                    modified = '[+]', -- Text to show when the file is modified.
                    readonly = '[-]', -- Text to show when the file is non-modifiable or readonly.
                    unnamed = '[No Name]', -- Text to show for unnamed buffers.
                    newfile = '[New]', -- Text to show for new created file before first writting
                }

            },

        },
        lualine_b = { "branch", "diagnostics","tabs" },
        lualine_c = {
            {
                "%f",
                color = {
                    gui = "italic",
                },
            },
        },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = { "filetype" },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
    tabline = {},
    extensions = {"quickfix"},

        })
	end,
}


