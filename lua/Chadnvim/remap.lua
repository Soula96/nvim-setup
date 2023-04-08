vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- remap from the primagen: yank word, when pasting over a different word
-- with <leader>l the originally yanked line remains in register
-- deleted line lands in void register and is gone
vim.keymap.set("x", "<leader>l" , "\"_dP")

-- this remaps the system clipboard to <leader>y, <leader>p and <leader>d

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>P", "\"+P")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")


-- Test if git is working now
