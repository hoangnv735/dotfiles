require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left"})
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right"})
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down"})
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up"})
map("n", "<C-d>", "<C-d>zz", { desc = "PageDown and center"})
map("n", "<C-u>", "<C-u>zz", { desc = "PageUp and center"})
map("n", "n", "nzzzv", { desc = "Find next and center"})
map("n", "B", "Nzzzv", { desc = "Find previous and center"})
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Swap Down"})
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Swap Up"})
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Swap Down"})
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Swap Up"})
map("i", "<C-c>", "Esc", { desc = "Escape"})

--Float terminal
map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle {
    pos = "float",
    float_opts = {
      relative = 'editor',
      row = 0.1,
      col = 0.15,
      width = 0.7,
      height = 0.8,
      border = "single",
    },
    id = "floatTerm" }
end, { desc = "terminal toggle floating term" })
