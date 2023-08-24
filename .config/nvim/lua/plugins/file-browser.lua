--  _____     _      __  __            _
-- |_   _|__ | | ___|  \/  | __ _ _ __(_) __ _ _ __ ___
--   | |/ _ \| |/ _ \ |\/| |/ _` | '__| |/ _` | '_ ` _ \
--   | | (_) | |  __/ |  | | (_| | |  | | (_| | | | | | |
--   |_|\___/|_|\___|_|  |_|\__,_|_|  |_|\__,_|_| |_| |_|

return {
  "nvim-telescope/telescope-file-browser.nvim",
  keys = {
    {
      "<leader>sB",
      ":Telescope file_browser path=%:p:h=%:p:h<cr>",
      desc = "Browse Files",
    },
  },
  config = function()
    require("telescope").load_extension("file_browser")
  end,
}
