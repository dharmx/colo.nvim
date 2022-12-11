---@module "colo"
---@author dharmx
---@license GPL-3.0

local M = {}

M.config = {
  theme = "radium_dark",
  notifications = {
    enable = true,
    options = {},
  },
  cycle = true,
  filetype = {
    enable = false,
    items = {
      ["*.python"] = "nord_dark",
      ["*.lua"] = "mountain_dark",
      ["*.cpp"] = "oxocarbon_dark",
    },
  },
  presets = {
    enable = false,
    items = {
      italic_comments = false,
      dotted_spell = false,
      contrast = false,
      transparent_ui = false,
      visible_borders = false,
      transparent_statusline = false,
      transparent_tabline = false,
      transparent_winbar = false,
      transparent_floatwin = false,
    },
  },
  aggregates = {
    enable = true,
    items = {
      bold = true,
      undercurl = false,
      underline = false,
      italic = false,
      transparent = false,
    },
  },
  blacklists = {
    enable = false,
    items = {
      "integration.nui",
      "base.spell",
    },
  },
  custom_hl = {
    enable = false,
    items = {
      LspDiagnosticsSignWarn = { link = "DevIconHtm" },
      LspDiagnosticsSignError = { link = "DevIconJava" },
      LspDiagnosticsSignInfo = { link = "DevIconCobol" },
      LspDiagnosticsSignHint = { link = "DevIconMaterial" },
    },
  },
  manual = true,
  extensions = {
    feline = {
      enable = false,
      module = "colo.extensions.feline",
      options = {},
    },
    bufferline = {
      enable = false,
      module = "colo.extensions.bufferline",
      options = {},
    },
    devicons = {
      enable = false,
      module = "colo.extensions.devicons",
      options = {},
    },
    alpha = {
      enable = false,
      module = "colo.extensions.alpha",
      options = {},
    },
  },
  logging = vim.log.levels.OFF,
}

---Configure and enable the plugin
---@param user_config table plugin configuration
function M.setup(user_config)
  M.config = vim.tbl_deep_extend("force", M.config, user_config or {})
  _G.colo_private = {
    manual = M.config.manual,
    cycle = M.config.cycle,
  }
  vim.cmd.Colo(M.config.theme)
end

return M

---vim:filetype=lua
