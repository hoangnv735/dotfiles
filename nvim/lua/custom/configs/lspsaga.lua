local present, lspsaga = pcall(require, "lspsaga")

if not present then
  return
end

lspsaga.setup {
  symbol_in_winbar = {
    enable = true,
    separator = " ",
    hide_keyword = true,
    show_file = true,
    folder_level = 2,
    respect_root = false,
    color_mode = true,
  },
}

