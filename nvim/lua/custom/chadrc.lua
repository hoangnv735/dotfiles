---@type ChadrcConfig 
local M = {}
M.ui = {
 theme = 'github_light',
 theme_toggle = {'github_light', 'github_light'}
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
