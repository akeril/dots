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

-- Execute Lua Commands
keymap("n", "<leader>x", ":.lua<CR>")
keymap("v", "<leader>x", ":lua<CR>")

-- Quickfix List Navigation
keymap("n", "<C-p>", "<cmd>cprev<CR>")
keymap("n", "<C-n>", "<cmd>cnext<CR>")

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
