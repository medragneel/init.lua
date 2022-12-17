vim.g.mapleader = ","
--vim.api.nvim_set_keymap("n","<leader>e","<cmd>tabe <CR><cmd>Ex<CR>")
vim.keymap.set("n","<leader>e","<cmd>tabe <CR><cmd>Ex<CR>")
vim.keymap.set("n","<leader>s","<cmd>w<CR>")
vim.keymap.set("n","<leader>`","<cmd>q!<CR>")
vim.keymap.set("n","<leader>h","gT<CR>")
vim.keymap.set("n","<leader>l","gt<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

--copying to the clipboard
vim.keymap.set("n","<leader>c","\"+y")
vim.keymap.set("v","<leader>c","\"+y")
vim.keymap.set("n","<leader>v","\"+p")
