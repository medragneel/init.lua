--require("medmh")
print("Welcome Medmh")
require('config.lazy')
require('config.remap')
require('config.set')

-- local augroup = vim.api.nvim_create_augroup
--
--
-- local mgrp = augroup('mgrp', {})
--
-- local autocmd = vim.api.nvim_create_autocmd
-- local yank_group = augroup('HighlightYank', {})
--
-- autocmd('TextYankPost', {
--     group = yank_group,
--     pattern = '*',
--     callback = function()
--         vim.highlight.on_yank({
--             higroup = 'IncSearch',
--             timeout = 40,
--         })
--     end,
-- })
--
--
-- autocmd({ "BufWritePre" }, {
--     group = mgrp,
--     pattern = "*",
--     command = [[%s/\s\+$//e]],
-- })
