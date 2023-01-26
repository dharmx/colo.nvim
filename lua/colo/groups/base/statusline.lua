---@module "colo.groups.base.statusline"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    StatusLine = { background = col.black, foreground = col.blue },
    StatusLineNC = { foreground = col.blue },
  }
end

return M

---vim:filetype=lua
