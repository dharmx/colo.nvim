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

---@alias defaults { theme: string, cycle: boolean, manual: boolean, notifications: boolean, inverted: boolean, logging: DEBUG|ERROR|INFO|TRACE|WARN|OFF, mappings: { enable: boolean, items: { mode: string, key: string, action: function|string, options: table<string, boolean> }[] }, extensions: table<string, { enable: boolean, module: string, options: table }>, aggregates: { enable: boolean, items: { italic: boolean, bold: boolean, undercurl: boolean, underline: boolean, transparent: boolean } }, filetypes: { enable: boolean, initial: boolean, items: table<string, string> }, custom_hl: { enable: boolean, items: table<string, table<string, boolean|number|string>> }, presets: { enable: boolean, items: { italic_comments: boolean, dotted_spell: boolean, contrast: boolean } }, telescope: table }

---Current config.
---@type defaults
M.config = {}

---Configure and enable the plugin
---@param options defaults
function M.setup(options)
  M.config = vim.tbl_deep_extend("force", require("colo.config").defaults, vim.F.if_nil(options, {}))
  _G.___colo_private = {
    cycle = M.config.cycle,
  }

  local colo = require("colo.api")
  colo.theme.set(M.config.theme)

  ---load the inverted version of the theme instead
  if M.config.inverted then
    colo.theme.invert()
  end

  ---add mappings - these will be passed onto |vim.keymap.set()|
  if M.config.mappings.enable then
    for _, map in ipairs(M.config.mappings.items) do
      vim.keymap.set(map.mode, map.key, map.action, map.options)
    end
  end

  ---apply aggregates i.e. font styles
  if M.config.aggregates.enable then
    for aggregate, enable in pairs(M.config.aggregates.items) do
      if enable then
        colo.aggregate.add(aggregate)
      end
    end
  end

  ---Have different themes for different filetypes
  if M.config.filetypes.enable then
    local colo_augroup = vim.api.nvim_create_augroup("ColoFiletype", {
      clear = true,
    })

    for filetype, theme in pairs(M.config.filetypes.items) do
      vim.api.nvim_create_autocmd("BufEnter", {
        pattern = filetype,
        callback = function()
          colo.theme.set(theme)
        end,
        group = colo_augroup,
      })
    end

    vim.api.nvim_create_autocmd("BufLeave", {
      callback = function()
        if vim.g.colors_name ~= M.config.theme then
          colo.theme.set(M.config.theme)
        end
      end,
      group = colo_augroup,
    })
  end

  ---setup extra highlights these will be loaded even after the theme overrides
  if M.config.custom_hl.enable then
    for hl_name, hl_value in pairs(M.config.custom_hl.items) do
      vim.api.nvim_set_hl(0, hl_name, hl_value)
    end
  end

  ---setup presets
  if M.config.presets.enable then
    local presets = require("colo.presets")
    for preset, enable in pairs(M.config.presets.items) do
      if enable then
        presets["enable_" .. preset]()
      end
    end
  end
end

return M

---vim:filetype=lua
