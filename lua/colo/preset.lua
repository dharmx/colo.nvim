local M = {}

local conf = require("colo.config")
local tutl = require("colo.theme")
local api = require("colo.api")

function M.kind_swap_toggle(c)
  c = vim.F.if_nil(c, api.theme.current())
  local kind_hl
  if conf.current._private.kind_glaze then conf.current._private.kind_glaze = nil end
  if conf.current._private.kind_swap then
    kind_hl = conf.current._private.kind_swap
    conf.current._private.kind_swap = nil
    for n, v in pairs(kind_hl) do
      tutl.set_hl(n, v)
    end
    return
  end

  kind_hl = require("colo.groups.integration.cmp").prime(c)
  conf.current._private.kind_swap = vim.deepcopy(kind_hl)
  for n, _ in pairs(kind_hl) do
    if n:match("^CmpItemKind") and not n:match("^CmpItemAbbr") and not n:match("^CmpItemMenu") and not n:match("^CmpItemKind$") then
      local hl = tutl.reslove_link(n)
      hl.background = hl.foreground
      hl.foreground = c.bright_black
      tutl.set_hl(n, hl)
    end
  end
end

function M.kind_glaze_toggle(c)
  c = vim.F.if_nil(c, api.theme.current())
  local kind_hl
  if conf.current._private.kind_swap then conf.current._private.kind_swap_toggle = nil end
  if conf.current._private.kind_glaze then
    kind_hl = conf.current._private.kind_glaze
    conf.current._private.kind_glaze = nil
    for n, v in pairs(kind_hl) do
      tutl.set_hl(n, v)
    end
    return
  end

  kind_hl = require("colo.groups.integration.cmp").prime(c)
  conf.current._private.kind_glaze = vim.deepcopy(kind_hl)
  for n, _ in pairs(kind_hl) do
    if n:match("^CmpItemKind") and not n:match("^CmpItemAbbr") and not n:match("^CmpItemMenu") and not n:match("^CmpItemKind$") then
      local hl = tutl.reslove_link(n)
      hl.background = hl.foreground:saturate(10):darken(60)
      tutl.set_hl(n, hl)
    end
  end
end

return M

-- vim:filetype=lua
