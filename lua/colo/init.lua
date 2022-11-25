---@module "colo"
---@author dharmx
---@license GPL-3.0

local M = {}

local default_config = { theme = "radium" }

---Configure and enable the plugin
---@param user_config table plugin configuration
function M.setup(user_config)
  local full_config = vim.tbl_deep_extend("keep", user_config or {}, default_config)
  vim.g.colo_theme = full_config.theme
end

return M

-- vim:filetype=lua
