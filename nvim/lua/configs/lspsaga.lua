local lspsaga = require "lspsaga"

lspsaga.setup{
  symbol_in_winbar = {
    enable = true,
    separator = "› ",
    hide_keyword = false,
    show_file = true,
    folder_level = 1,
    color_mode = true,
    respect_root = true,
  },
  code_action = {
    num_shortcut = true,
    show_server_name = false,
    extend_gitsigns = false,
  }
}
