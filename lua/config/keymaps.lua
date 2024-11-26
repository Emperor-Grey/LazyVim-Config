-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Map jj to escape insert mode
map("i", "jj", "<Esc>", opts)

-- Map Ctrl + / to comment a line
map("n", "<C-_>", ':lua require("Comment.api").toggle.linewise.current()<CR>', opts)

-- Map Leader + y to copy to the system clipboard
map("n", "<leader>y", '"+y', opts)
map("v", "<leader>y", '"+y', opts)

-- Map Leader + p to paste from the system clipboard
map("n", "<leader>p", '"+p', opts)
map("v", "<leader>p", '"+p', opts)
