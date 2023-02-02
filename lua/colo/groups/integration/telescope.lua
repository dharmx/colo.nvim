---@module "colo.groups.integration.telescope"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    TelescopePreviewBorder = { background = c.black:darken(1), foreground = c.black:darken(1) },
    TelescopeResultsBorder = { background = c.black:darken(2), foreground = c.black:darken(2) },
    TelescopePromptBorder = { background = c.black:lighten(1), foreground = c.bright_black:darken(1.5) },
    TelescopePreviewNormal = { background = c.black:darken(1), foreground = c.white:darken(10) },
    TelescopeResultsNormal = { background = c.black:darken(2), foreground = c.white:darken(10) },
    TelescopePromptNormal = { background = c.black:lighten(1), foreground = c.white:darken(10) },
    TelescopePromptPrefix = { background = c.black:lighten(1), foreground = c.red },
    TelescopePromptCounter = { background = c.black:lighten(1), foreground = c.magenta:spin(0.1) },
    TelescopePreviewTitle = { background = c.blue, foreground = c.black },
    TelescopeResultsTitle = { background = c.green, foreground = c.black },
    TelescopePromptTitle = { background = c.red, foreground = c.black },
    TelescopeSelection = { background = c.black, foreground = c.bright_cyan },
    TelescopeSelectionCaret = { background = c.black, foreground = c.bright_red },
    TelescopePreviewLine = { background = c.black:lighten(1):brighten(1) },
    TelescopeMatching = { foreground = c.magenta:increase_red(10):decrease_blue(5) },
  }
end

return M

-- vim:filetype=lua
