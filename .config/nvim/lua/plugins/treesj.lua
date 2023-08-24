--  _____     _      __  __            _
-- |_   _|__ | | ___|  \/  | __ _ _ __(_) __ _ _ __ ___
--   | |/ _ \| |/ _ \ |\/| |/ _` | '__| |/ _` | '_ ` _ \
--   | | (_) | |  __/ |  | | (_| | |  | | (_| | | | | | |
--   |_|\___/|_|\___|_|  |_|\__,_|_|  |_|\__,_|_| |_| |_|

return {
  "Wansmer/treesj",
  keys = { "<space>m", "<space>j", "<space>s" },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("treesj").setup({--[[ your config ]]
    })
  end,
}
