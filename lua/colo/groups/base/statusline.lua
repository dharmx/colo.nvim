---@module "colo.groups.base.statusline"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    StatusLine = { background = c.black, foreground = c.blue },
    StatusLineNC = { foreground = c.blue },
  }
end

return M

---vim:filetype=lua
