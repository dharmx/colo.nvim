local M = {}

function M.setup(opts)
  local colo_config = require("colo.config")
  if colo_config._PRIVATE.loaded then return end

  colo_config.set(opts)
  local colo = require("colo.api")
  colo.theme.set(colo_config.current.theme)

  if colo_config.current.mappings.enable then
    for _, map in ipairs(colo_config.current.mappings.items) do
      vim.keymap.set(map.mode, map.key, map.action, map.opts)
    end
  end

  if colo_config.current.aggregates.enable then
    for attr, state in pairs(colo_config.current.aggregates.items) do
      if state then colo.aggregate.append(attr) end
    end
  end

  colo_config._PRIVATE.loaded = true
end

return M

-- vim:filetype=lua
