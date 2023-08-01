local M = {}

M.general = {
  n = {
    ["<C-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "window left"},
    ["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>", "window right"},
    ["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>", "window down"},
    ["<C-k>"] = {"<cmd> TmuxNavigateUp<CR>", "window up"},
    ["<C-d>"] = {"<C-d>zz", "PageDown and center"},
    ["<C-u>"] = {"<C-u>zz", "PageUp and center"},
    ["n"] = {"nzzzv", "Find next and center"},
    ["N"] = {"Nzzzv", "Find previous and center"},
  },
  v = {
    ["J"] = {":m '>+1<CR>gv=gv", "Move Up"},
    ["K"] = {":m '<-2<CR>gv=gv", "Move Down"}
  },
  i = {
    ["C-c"] = {"Esc", "Escape"},
  }
}
return M