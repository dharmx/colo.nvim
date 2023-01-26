---@module "colo.groups.integration.rnvimr"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    RnvimrNormal = { link = "NormalFloat" },
  }
end

return M

---vim:filetype=lua
