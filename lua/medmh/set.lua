vim.opt.guifont = 'jetbrains mono nerd font,dejavu sans mono,iosevka:h16'
vim.opt.title = true
vim.opt.swapfile = false
vim.opt.fileencoding = 'utf-8'
vim.opt.shortmess:append('c')
vim.opt.iskeyword:append('-')
vim.opt.encoding = "UTF-8"
vim.opt.autoread = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 8
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 30
vim.wo.fillchars = 'eob: '
vim.opt.updatetime = 50
vim.opt.showmode = false

vim.g.mapleader = ','
vim.opt.termguicolors = true

vim.opt.shortmess:append "c"

require 'colorizer'.setup()
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
    command = "if mode() != 'c' | checktime | endif",
    pattern = { "*" },
})
vim.cmd 'filetype plugin on'
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
