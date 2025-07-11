-- Keybindings
vim.g.mapleader = " "

-- Setting Space as leader key
vim.keymap.set("", "<Space>", "<Nop>")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Buffer Navigation
vim.keymap.set("n", "<S-h>", "<CMD>bprevious<CR>")
vim.keymap.set("n", "<S-l>", "<CMD>bnext<CR>")

-- Indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Buffer
vim.keymap.set("n", "<leader>d", "<CMD>bd!<CR>")
