local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = "github_dark",
  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
