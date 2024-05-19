---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'nightfox',
  hl_override = {
    CursorLineNr = {
      fg = "orange",
    }
  }
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
