require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })
map("n", "<C-d>", "<C-d>zz", { desc = "PageDown and center" })
map("n", "<C-u>", "<C-u>zz", { desc = "PageUp and center" })
map("n", "n", "nzzzv", { desc = "Find next and center" })
map("n", "B", "Nzzzv", { desc = "Find previous and center" })
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Swap Down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Swap Up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Swap Down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Swap Up" })
-- map("i", "<C-c>", "Esc", { desc = "Escape" })
map("v", "<", "<gv", { desc = "Shift left" })
map("v", ">", ">gv", { desc = "Shift right" })

--switch tab
for i = 1, 9, 1 do
  map("n", string.format("<A-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end)
end

--LspSaga
map("n", "<leader>ga", "<cmd> Lspsaga code_action<CR>", { desc = "Lspsaga code action"})
map("n", "<leader>go", "<cmd> Lspsaga outline<CR>", { desc = "Lspsaga outline"})
map("n", "<leader>gf", "<cmd> Lspsaga finder<CR>", { desc = "Lspsaga finder"})

