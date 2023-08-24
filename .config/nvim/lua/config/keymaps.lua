--  _____     _      __  __            _
-- |_   _|__ | | ___|  \/  | __ _ _ __(_) __ _ _ __ ___
--   | |/ _ \| |/ _ \ |\/| |/ _` | '__| |/ _` | '_ ` _ \
--   | | (_) | |  __/ |  | | (_| | |  | | (_| | | | | | |
--   |_|\___/|_|\___|_|  |_|\__,_|_|  |_|\__,_|_| |_| |_|
--
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)
