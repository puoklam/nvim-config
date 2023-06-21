vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-z>", "u")
vim.keymap.set("n", "<C-x>", "<C-R>")
vim.keymap.set("i", "<C-z>", "<C-O>u")
vim.keymap.set("i", "<C-x>", "<C-O><C-R>")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
