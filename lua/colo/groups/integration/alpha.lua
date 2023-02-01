---@module "colo.groups.integration.alpha"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    AlphaKeyPrefix = { background = col.blue, foreground = col.black },
    AlphaFooting = { foreground = col.magenta },
    AlphaHeading = { foreground = col.bright_black:lighten(1) },
    AlphaLoaded = { foreground = col.bright_black:brighten(4):lighten(1) },
    AlphaScroll = { foreground = col.magenta },
    AlphaButtonLabelText = { foreground = col.yellow },
  }
end

return M

---vim:filetype=lua
