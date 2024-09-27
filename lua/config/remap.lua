--vim.api.nvim_set_keymap("n","<leader>e","<cmd>tabe <CR><cmd>Ex<CR>")
vim.keymap.set("n", "<leader>e", "<cmd>tabe .<CR>")
vim.keymap.set("n", "<leader>s", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>`", "<cmd>q!<CR>")
vim.keymap.set("n", "<leader>h", "gT<CR>")
vim.keymap.set("n", "<leader>l", "gt<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>pv", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", "4", "$")
vim.keymap.set("v", "<leader>a", ":norm A ; <CR>")



-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

--copying to the clipboard
vim.keymap.set("n", "<leader>c", "\"+y")
vim.keymap.set("v", "<leader>c", "\"+y")
vim.keymap.set("n", "<leader>v", "\"+p")

--init.lua
vim.keymap.set("n", "cf", "<cmd>tabe ~/.config/nvim/<CR>")
vim.keymap.set("n", "<leader>cs", "<cmd>luafile ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n", "<leader>sr", "<cmd>luafile % <CR>")
vim.keymap.set("n", "<space>f", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>")





-- vim.keymap.set("n", "<leader>so", function()
--     vim.cmd("so")
-- end)
