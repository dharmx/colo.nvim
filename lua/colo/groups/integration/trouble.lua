---@module "colo.groups.integration.trouble"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    TroubleNormal = { background = col.black:darken(2) },
  }
end

return M

---vim:filetype=lua
