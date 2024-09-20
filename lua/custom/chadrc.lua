local vim = vim
local opt = vim.opt

vim.g.copilot_assume_mapped = true

opt.foldmethod = "manual"
-- disable automatic folding
opt.foldenable = false

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'nord',
  hl_override = {
    CursorLineNr = {
      fg = "orange",
      undercurl = true,
    }
  },
  transparency = true,
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
