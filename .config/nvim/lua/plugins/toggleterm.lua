--  _____     _      __  __            _
-- |_   _|__ | | ___|  \/  | __ _ _ __(_) __ _ _ __ ___
--   | |/ _ \| |/ _ \ |\/| |/ _` | '__| |/ _` | '_ ` _ \
--   | | (_) | |  __/ |  | | (_| | |  | | (_| | | | | | |
--   |_|\___/|_|\___|_|  |_|\__,_|_|  |_|\__,_|_| |_| |_|

return {
  -- amongst your other plugins
  { "akinsho/toggleterm.nvim", version = "*", config = true },
  -- or
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = 12,
      open_mapping = [[<C-\>]],
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = "1",
      start_in_insert = true,
      persist_size = true,
      persist_mode = true,
      direction = "horizontal",
      close_on_exit = true,
    },
  },

  config = function()
    require("toggleterm").setup({})
  end,
}
