---@module "colo.groups.integration.toggleterm"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    ToggleTerm1NormalFloat = { link = "NormalFloat" },
    ToggleTerm1FloatBorder = { link = "FloatBorder" },
  }
end

return M

-- vim:filetype=lua
