---@module "colo"
---@author dharmx
---@license GPL-3.0

local M = {}

M.config = {
  theme = "radium",
  variant = "dark",
  manual = false,
  integrations = {
    feline = {
      enable = true,
      module = "colo.integrations.feline",
    },
    bufferline = {
      enable = true,
      module = "colo.integrations.bufferline",
    },
    devicons = {
      enable = true,
      module = "colo.integrations.devicons",
    },
    alpha = {
      enable = true,
      module = "colo.integrations.alpha",
    },
  },
}

---Configure and enable the plugin
---@param user_config table plugin configuration
function M.setup(user_config)
  M.config = vim.tbl_deep_extend("force", M.config, user_config or {})
  vim.cmd.colorscheme(M.config.theme .. "-" .. M.config.variant)
end

return M

---vim:filetype=lua
