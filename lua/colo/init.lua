---@module "colo"
---@author dharmx
---@license GPL-3.0

local M = {}

local default_config = {
  theme = "radium",
  variant = "dark",
  integrations = {
    feline = true,
    bufferline = true,
    devicons = true,
  },
}

---Configure and enable the plugin
---@param user_config table plugin configuration
function M.setup(user_config)
  local full_config = vim.tbl_deep_extend("force", default_config, user_config or {})
  vim.cmd.colorscheme(full_config.theme .. "-" .. full_config.variant)
  for plugin, state in pairs(full_config.integrations) do
    if state then
      require("colo.integrations." .. plugin)
    end
  end
end

return M

---vim:filetype=lua
