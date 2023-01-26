---@module "colo"
---@author dharmx
---@license GPL-3.0

local M = {}

---@alias DEBUG 1
---@alias ERROR 4
---@alias INFO 2
---@alias TRACE 0
---@alias WARN 3
---@alias OFF 5

---Configure and enable the plugin
---@param options ColoConfig?
function M.setup(options)
  local config = require("colo.config")
  config.set(options)
  local colo = require("colo.api")
  colo.theme.set(config.current.theme)
end

return M

---vim:filetype=lua
