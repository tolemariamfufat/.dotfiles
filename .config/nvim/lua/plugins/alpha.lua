--  _____     _      __  __            _
-- |_   _|__ | | ___|  \/  | __ _ _ __(_) __ _ _ __ ___
--   | |/ _ \| |/ _ \ |\/| |/ _` | '__| |/ _` | '_ ` _ \
--   | | (_) | |  __/ |  | | (_| | |  | | (_| | | | | | |
--   |_|\___/|_|\___|_|  |_|\__,_|_|  |_|\__,_|_| |_| |_|
--
return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local logo = [[
	  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
	  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
	  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
	  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
	  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
	  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

	                   [ I AM ]
    ]]
    opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
  end,
}