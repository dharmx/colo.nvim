local M = {}

local conf = require("colo.config")
local tutil = require("colo.theme")
local api = require("colo.api")

function M.kind_swap_toggle(col)
  col = vim.F.if_nil(col, api.theme.current())
  local kind_hl
  if conf.current._private.kind then
    kind_hl = conf.current._private.kind
    conf.current._private.kind = nil
    for n, v in pairs(kind_hl) do
      tutil.set_hl(n, v)
    end
    return
  end

  kind_hl = require("colo.groups.integration.cmp").prime(col)
  conf.current._private.kind = vim.deepcopy(kind_hl)
  for n, _ in pairs(kind_hl) do
    if n:match("^CmpItemKind") and not n:match("^CmpItemAbbr") and not n:match("^CmpItemMenu") and not n:match("^CmpItemKind$") then
      local hl = tutil.reslove_link(n)
      hl.background = hl.foreground
      hl.foreground = col.bright_black
      tutil.set_hl(n, hl)
    end
  end
end

function M.kind_glaze_toggle(col)
  col = vim.F.if_nil(col, api.theme.current())
  local kind_hl
  if conf.current._private.kind then
    kind_hl = conf.current._private.kind
    conf.current._private.kind = nil
    for n, v in pairs(kind_hl) do
      tutil.set_hl(n, v)
    end
    return
  end

  kind_hl = require("colo.groups.integration.cmp").prime(col)
  conf.current._private.kind = vim.deepcopy(kind_hl)
  for n, _ in pairs(kind_hl) do
    if n:match("^CmpItemKind") and not n:match("^CmpItemAbbr") and not n:match("^CmpItemMenu") and not n:match("^CmpItemKind$") then
      local hl = tutil.reslove_link(n)
      hl.background = hl.foreground:saturate(10):darken(60)
      tutil.set_hl(n, hl)
    end
  end
end

return M

-- vim:filetype=lua
