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
    ["<A-j>"] = {":m .+1<CR>==", "Swap Down"},
    ["<A-k>"] = {":m .-2<CR>==", "Swap Up"}
  },
  v = {
    ["<A-j>"] = {":m '>+1<CR>gv=gv", "Swap Down"},
    ["<A-k>"] = {":m '<-2<CR>gv=gv", "Swap Up"}
  },
  i = {
    ["<C-c>"] = {"Esc", "Escape"},
  }
}
return M
