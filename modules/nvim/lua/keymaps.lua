-- Keybindings
vim.g.mapleader = " "
local keymap = vim.keymap.set

-- Setting Space as leader key
keymap("", "<Space>", "<Nop>")
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Window Navigation
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- Buffer Navigation
keymap("n", "<S-h>", "<CMD>bprevious<CR>")
keymap("n", "<S-l>", "<CMD>bnext<CR>")

-- Indenting
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Buffer
keymap("n", "<leader>d", "<CMD>bd!<CR>")

-- Diagnostics
keymap("n", "[d", vim.diagnostic.goto_prev)
keymap("n", "]d", vim.diagnostic.goto_next)
