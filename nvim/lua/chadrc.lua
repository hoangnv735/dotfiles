-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "one_light",
  theme_toggle = { "one_light", "onedark"},

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.term = {
  float =  {
    relative = "editor",
    row = 0.1,
    col = 0.15,
    width = 0.7,
    height = 0.8,
    border = "single",
  }
}
M.mason = { cmd = true, pkgs = {} }

return M
