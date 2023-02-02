local M = {}

local conf = require("colo.config")
local tutil = require("colo.theme")
local api = require("colo.api")

function M.kind_swap_toggle(c)
  c = vim.F.if_nil(c, api.theme.current())
  local kind_hl
  if conf._PRIVATE.kind_glaze then conf._PRIVATE.kind_glaze = nil end
  if conf._PRIVATE.kind_swap then
    kind_hl = conf._PRIVATE.kind_swap
    conf._PRIVATE.kind_swap = nil
    for n, v in pairs(kind_hl) do
      tutil.set_hl(n, v)
    end
    return
  end

  kind_hl = require("colo.groups.integration.cmp").prime(c)
  conf._PRIVATE.kind_swap = vim.deepcopy(kind_hl)
  for n, _ in pairs(kind_hl) do
    if n:match("^CmpItemKind") and not n:match("^CmpItemAbbr") and not n:match("^CmpItemMenu") and not n:match("^CmpItemKind$") then
      local hl = tutil.resolve(n)
      hl.background = hl.foreground
      hl.foreground = c.bright_black
      tutil.set_hl(n, hl)
    end
  end
end

function M.kind_glaze_toggle(c)
  c = vim.F.if_nil(c, api.theme.current())
  local kind_hl
  if conf._PRIVATE.kind_swap then conf._PRIVATE.kind_swap = nil end
  if conf._PRIVATE.kind_glaze then
    kind_hl = conf._PRIVATE.kind_glaze
    conf._PRIVATE.kind_glaze = nil
    for n, v in pairs(kind_hl) do
      tutil.set_hl(n, v)
    end
    return
  end

  kind_hl = require("colo.groups.integration.cmp").prime(c)
  conf._PRIVATE.kind_glaze = vim.deepcopy(kind_hl)
  for n, _ in pairs(kind_hl) do
    if n:match("^CmpItemKind") and not n:match("^CmpItemAbbr") and not n:match("^CmpItemMenu") and not n:match("^CmpItemKind$") then
      local hl = tutil.resolve(n)
      hl.background = hl.foreground:saturate(10):darken(60)
      tutil.set_hl(n, hl)
    end
  end
end

return M

-- vim:filetype=lua
