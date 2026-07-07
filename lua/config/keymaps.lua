-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>z", "<cmd>w<cr>", { desc = "Save file" })

-- Tab acts as Esc in insert and visual modes
vim.keymap.set({ "i", "v" }, "<Tab>", "<Esc>", { desc = "Escape" })
