local M = {}

local A = vim.api

local Color = require("colo.color")
local util = require("colo.util")

M.gui = {
  UNDERLINE = "underline",
  UNDERCURL = "undercurl",
  UNDERDOUBLE = "underdouble",
  UNDERDOTTED = "underdotted",
  UNDERDASHED = "underdashed",
  ITALIC = "italic",
  INVERSE = "inverse",
  REVERSE = "reverse",
  BOLD = "bold",
  STANDOUT = "standout",
  NOCOMBINE = "nocombine",
  STRIKETHROUGH = "strikethrough",
  ULN = "underline",
  UCL = "undercurl",
  UDB = "underdouble",
  UDT = "underdotted",
  UDA = "underdashed",
  I = "italic",
  R = "reverse",
  B = "bold",
  SO = "standout",
  NC = "nocombine",
  ST = "strikethrough",
}

function M.wrap(n)
  local s = { "foreground", "background", "special" }
  local _hl, hl = pcall(A.nvim_get_hl_by_name, n, true)
  hl = _hl and util.tbl.rm_bool(hl) or {}

  for k, v in pairs(hl) do
    if vim.tbl_contains(s, k) then hl[k] = Color:new({ hex = ("#%06X"):format(v) }) end
  end
  return hl
end

function M.rm(n, ns) A.nvim_set_hl(vim.F.if_nil(ns, 0), n, {}) end

function M.link(s, t, ns) A.nvim_set_hl(vim.F.if_nil(ns, 0), s, { link = t }) end

function M.resolve(n)
  local hl = A.nvim_get_hl_by_name(n, true)
  if hl.link then return M.resolve_link(hl.link) end
  return M.wrap(n)
end

function M.set_term(cols)
  for i, v in ipairs(cols) do
    local base = i - 1
    vim.g["terminal_color_" .. base] = v:HEX(true)
  end
end

function M.style(n, attr, ns)
  attr = util.tbl.trnopts(attr)
  local hl = util.tbl.rm_bool(A.nvim_get_hl_by_name(n, true))
  attr = vim.tbl_extend("force", attr, hl)
  A.nvim_set_hl(vim.F.if_nil(ns, 0), n, attr)
end

function M.set_hl(n, opts, ns)
  opts = vim.F.if_nil(opts, {})
  opts = util.tbl.trnopts(util.tbl.rm_bool(opts))
  opts.foreground = opts.foreground and opts.foreground:HEX(true) or nil
  opts.background = opts.background and opts.background:HEX(true) or nil
  opts.special = opts.special and opts.special:HEX(true) or nil
  A.nvim_set_hl(vim.F.if_nil(ns, 0), n, opts)
end

return M

-- vim:filetype=lua
