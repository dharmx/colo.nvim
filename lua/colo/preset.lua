local M = {}

local colo_config = require("colo.config")
local theme_util = require("colo.theme")
local colo_api = require("colo.api")

function M.kind_swap_toggle(colors)
  colors = vim.F.if_nil(colors, colo_api.theme.current())
  local kind_hl
  if colo_config._PRIVATE.kind_glaze then colo_config._PRIVATE.kind_glaze = nil end
  if colo_config._PRIVATE.kind_swap then
    kind_hl = colo_config._PRIVATE.kind_swap
    colo_config._PRIVATE.kind_swap = nil
    for hl_name, hl_value in pairs(kind_hl) do
      theme_util.set_hl(hl_name, hl_value)
    end
    return
  end

  kind_hl = require("colo.groups.integration.cmp").prime(colors)
  colo_config._PRIVATE.kind_swap = vim.deepcopy(kind_hl)
  for hl_name, _ in pairs(kind_hl) do
    if
      hl_name:match("^CmpItemKind")
      and not hl_name:match("^CmpItemAbbr")
      and not hl_name:match("^CmpItemMenu")
      and not hl_name:match("^CmpItemKind$")
    then
      local hl_value = theme_util.resolve(hl_name)
      hl_value.background = hl_value.foreground
      hl_value.foreground = colors.bright_black
      theme_util.set_hl(hl_name, hl_value)
    end
  end
end

function M.kind_glaze_toggle(colors)
  colors = vim.F.if_nil(colors, colo_api.theme.current())
  local kind_hl
  if colo_config._PRIVATE.kind_swap then colo_config._PRIVATE.kind_swap = nil end
  if colo_config._PRIVATE.kind_glaze then
    kind_hl = colo_config._PRIVATE.kind_glaze
    colo_config._PRIVATE.kind_glaze = nil
    for hl_name, hl_value in pairs(kind_hl) do
      theme_util.set_hl(hl_name, hl_value)
    end
    return
  end

  kind_hl = require("colo.groups.integration.cmp").prime(colors)
  colo_config._PRIVATE.kind_glaze = vim.deepcopy(kind_hl)
  for hl_name, _ in pairs(kind_hl) do
    if
      hl_name:match("^CmpItemKind")
      and not hl_name:match("^CmpItemAbbr")
      and not hl_name:match("^CmpItemMenu")
      and not hl_name:match("^CmpItemKind$")
    then
      local hl_resolved = theme_util.resolve(hl_name)
      hl_resolved.background = hl_resolved.foreground:saturate(10):darken(60)
      theme_util.set_hl(hl_name, hl_resolved)
    end
  end
end

return M
