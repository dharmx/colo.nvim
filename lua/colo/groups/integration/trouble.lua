---@module "colo.groups.integration.trouble"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    TroubleNormal = { background = c.black:darken(2) },
  }
end

return M

-- vim:filetype=lua
