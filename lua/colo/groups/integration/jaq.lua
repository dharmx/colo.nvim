---@module "colo.groups.integration.jaq"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    JaqWin = { background = col.black:lighten(3) },
    JaqBorder = { background = col.black:lighten(3) },
  }
end

return M

---vim:filetype=lua
