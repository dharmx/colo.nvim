---@module "colo"
---@author dharmx
---@license GPL-3.0

local M = {}

M.config = {
  theme = "radium",
  variant = "dark",
  manual = false,
  plugins = {
    feline = {
      enable = false,
      module = "colo.plugins.feline",
    },
    bufferline = {
      enable = false,
      module = "colo.plugins.bufferline",
    },
    devicons = {
      enable = false,
      module = "colo.plugins.devicons",
    },
    alpha = {
      enable = false,
      module = "colo.plugins.alpha",
    },
  },
}

---Configure and enable the plugin
---@param user_config table plugin configuration
function M.setup(user_config)
  M.config = vim.tbl_deep_extend("force", M.config, user_config or {})
end

return M

---vim:filetype=lua
