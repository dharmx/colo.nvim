-- GNU GENERAL PUBLIC LICENSE
-- Version 3, 29 June 2007
-- 
-- Permissions of this strong copyleft license are conditioned on
-- making available complete source code of licensed works and
-- modifications, which include larger works using a licensed work,
-- under the same license. Copyright and license notices must be
-- preserved. Contributors provide an express grant of patent rights.
-- 
-- Read the complete license here:
-- https://github.com/dharmx/nvim-colo/blob/main/LICENSE

---@brief [[
---*nvim-colo.txt*           For Neovim version 0.8.2     Last modified: FEB 09 2023
---
---                      ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄     ▄▄▄▄▄▄▄ 
---                     █       █       █   █   █       █
---                     █       █   ▄   █   █   █   ▄   █
---                     █     ▄▄█  █ █  █   █   █  █ █  █
---                     █    █  █  █▄█  █   █▄▄▄█  █▄█  █
---                     █    █▄▄█       █       █       █
---                     █▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█
---
---                    ✧  A theme engine for sex havers. ✧
---
---
---                 Authored by: dharmx | dharmx.dev@gmail.com
---                         Creation date: 2022 NOV 17
---                         Last modified: 2023 FEB 09
---                               Version: 0.1.0
---@brief ]]

---@toc colo.contents
---@mod nvim-colo INTRODUCTION
---@brief [[
---
---@brief ]]

local M = {}

---Configuration is done by passing a table through this function.
---If you do not want to
---@param opts ColoConfig
function M.setup(opts)
  local colo_config = require("colo.config")
  if colo_config._PRIVATE.loaded then return end

  colo_config.set(opts)
  local colo = require("colo.api")
  colo.theme.set(colo_config._CURRENT.theme)

  if colo_config._CURRENT.mappings.enable then
    for _, map in ipairs(colo_config._CURRENT.mappings.items) do
      vim.keymap.set(map.mode, map.key, map.action, map.opts)
    end
  end

  if colo_config._CURRENT.aggregates.enable then
    -- TODO: Reload sign definitions as well.
    for attr, state in pairs(colo_config._CURRENT.aggregates.items) do
      if state then colo.aggregate.append(attr) end
    end
  end

  colo_config._PRIVATE.loaded = true
end

return M
