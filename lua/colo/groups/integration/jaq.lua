---@module "colo.groups.integration.jaq"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    JaqWin = { background = c.black:lighten(3) },
    JaqBorder = { background = c.black:lighten(3) },
  }
end

return M

---vim:filetype=lua
