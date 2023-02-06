local M = {}

local A = vim.api

local Color = require("colo.color")
local util = require("colo.util")

M.decorations = {
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

function M.wrap(hl_name)
  local search = { "foreground", "background", "special" }
  local ok, hl = pcall(A.nvim_get_hl_by_name, hl_name, true)
  hl = ok and util.list.rmbool(hl) or {}

  for property, state in pairs(hl) do
    if vim.tbl_contains(search, property) then hl[property] = Color:new({ hex = ("#%06X"):format(state) }) end
  end
  return hl
end

function M.rm(hl_name, ns) A.nvim_set_hl(vim.F.if_nil(ns, 0), hl_name, {}) end

function M.link(source, target, ns) A.nvim_set_hl(vim.F.if_nil(ns, 0), source, { link = target }) end

function M.resolve(hl_name)
  local hl = A.nvim_get_hl_by_name(hl_name, true)
  if hl.link then return M.resolve(hl.link) end
  return M.wrap(hl_name)
end

function M.set_term(colors)
  for index, color in ipairs(colors) do
    local base = index - 1
    vim.g["terminal_color_" .. base] = color:HEX(true)
  end
end

function M.style(hl_name, attr, ns)
  attr = util.list.list2boolmap(attr)
  local hl = util.list.rmbool(A.nvim_get_hl_by_name(hl_name, true))
  attr = vim.tbl_extend("force", attr, hl)
  A.nvim_set_hl(vim.F.if_nil(ns, 0), hl_name, attr)
end

function M.set_hl(hl_name, opts, ns)
  opts = vim.F.if_nil(opts, {})
  opts = util.list.list2boolmap(util.list.rmbool(opts))
  opts.foreground = opts.foreground and opts.foreground:HEX(true) or nil
  opts.background = opts.background and opts.background:HEX(true) or nil
  opts.special = opts.special and opts.special:HEX(true) or nil
  A.nvim_set_hl(vim.F.if_nil(ns, 0), hl_name, opts)
end

return M

-- vim:filetype=lua
