local M = {}

function M.setup(opts)
  local conf = require("colo.config")
  if conf._PRIVATE.loaded then return end

  conf.set(opts)
  local colo = require("colo.api")
  colo.theme.set(conf.current.theme)

  for _, map in ipairs(conf.current.mappings.items) do
    vim.keymap.set(map.mode, map.key, map.action, map.opts)
  end

  conf._PRIVATE.loaded = true
end

return M

-- vim:filetype=lua
