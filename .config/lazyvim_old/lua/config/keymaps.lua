-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Allow ; to be used for entering command mode
vim.keymap.set({ "n" }, ";", ":", { desc = "Command mode", noremap = false })
