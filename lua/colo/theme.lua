---@diagnostic disable: param-type-mismatch, cast-local-type
---@module "colo.theme"
---@author dharmx
---@license GPL-3.0

local M = {}

local A = vim.api

---@module "colo.color"
local Color = require("colo.color")
---@module "colo.util"
local util = require("colo.util")

---This is a convenience enum. See |highlight-args|
---@enum decorations
M.gui = {
  ---underline
  UNDERLINE = "underline",
  ---curly underline
  UNDERCURL = "undercurl",
  ---double underline
  UNDERDOUBLE = "underdouble",
  ---dotted underline
  UNDERDOTTED = "underdotted",
  ---dashed underline
  UNDERDASHED = "underdashed",
  ---emphasis
  ITALIC = "italic",
  ---swaps foreground and background
  INVERSE = "inverse",
  ---swaps foreground and background
  REVERSE = "reverse",
  ---strong
  BOLD = "bold",
  ---standout
  STANDOUT = "standout",
  ---override attributes instead of combining them
  NOCOMBINE = "nocombine",
  ---horizontal line through letters
  STRIKETHROUGH = "strikethrough",
  ---underline
  ULN = "underline",
  ---curly underline
  UCL = "undercurl",
  ---double underline
  UDB = "underdouble",
  ---dotted underline
  UDT = "underdotted",
  ---dashed underline
  UDA = "underdashed",
  ---emphasis
  I = "italic",
  ---swaps foreground and background
  R = "reverse",
  ---strong
  B = "bold",
  ---standout
  SO = "standout",
  ---override attributes instead of combining them
  NC = "nocombine",
  ---horizontal line through letters
  ST = "strikethrough",
}

---Fetch a highlight group and wrap all color attributes like foreground into a Color object
---@param n string highlight group name
---@return table<string, Color|boolean>
function M.wrap(n)
  local s = { "foreground", "background", "special" }
  local _hl, hl = pcall(A.nvim_get_hl_by_name, n, true)
  hl = _hl and util.tbl.rm_bool(hl) or {}

  for k, v in pairs(hl) do
    if vim.tbl_contains(s, k) then hl[k] = Color:new({ hex = ("#%06X"):format(v) }) end
  end
  return hl
end

---Clear the highlight group.
---@param n string the name of the highlight group
function M.rm(n) A.nvim_set_hl(0, n, {}) end

---Link one highlighting group with another.
---@param s string the highlight group that needs to be linked to
---@param t string the highlight group that needs to be linked with
function M.link(s, t)
  A.nvim_set_hl(0, s, {
    link = t,
  })
end

function M.set_term(cols)
  for i, v in ipairs(cols) do
    local base = i - 1
    vim.g["terminal_color_" .. base] = v:HEX(true)
  end
end

---Only apply font decorations/styles to the selected hl group.
---@param n string name of the hl group
---@param attr table font options that are needed to be applied to that hl group
function M.style(n, attr)
  attr = util.tbl.trnopts(attr)
  local hl = util.tbl.rm_bool(A.nvim_get_hl_by_name(n, true))
  attr = vim.tbl_extend("force", attr, hl)
  A.nvim_set_hl(0, n, attr)
end

---simple highlighting function. only sets the background and foreground of the highlight group.
---@param n string highlight group name
---@param bg Color background color of the highlight group
---@param fg Color foreground color of the highlight group
---@param opts? table<number|string, string|number|boolean> other options that will be passed into |nvim_set_hl()|
function M.sset_hl(n, bg, fg, opts)
  local bghx = bg:HEX(true)
  local fghx = fg:HEX(true)
  if not opts then
    A.nvim_set_hl(0, n, { background = bghx, foreground = fghx })
  else
    opts.background = bghx
    opts.foreground = fghx
    opts = util.tbl.trnopts(opts)
    A.nvim_set_hl(0, n, opts)
  end
end

---Wrapper around nvim_set_hl.
---@param n string highlight group name
---@param opts? table<number|string, string|number|boolean|Color> other options that will be passed into |nvim_set_hl()|
function M.set_hl(n, opts)
  ---@diagnostic disable-next-line: param-type-mismatch
  local _opts = util.tbl.trnopts(util.tbl.rm_bool(opts))
  _opts.foreground = _opts.foreground and _opts.foreground:HEX(true) or nil
  _opts.background = _opts.background and _opts.background:HEX(true) or nil
  _opts.special = _opts.special and _opts.special:HEX(true) or nil
  A.nvim_set_hl(0, n, vim.F.if_nil(_opts, {}))
end

---Only assign a foreground color to a highlight group.
---@param n string highlight group name
---@param fg Color foreground color of the highlight group
---@param opts? table<number|string, string|number|boolean> other options that will be passed into |nvim_set_hl()|
function M.fg(n, fg, opts)
  fg = fg:HEX(true)
  if not opts then
    A.nvim_set_hl(0, n, { foreground = fg })
  else
    opts.foreground = fg
    opts = util.tbl.trnopts(opts)
    A.nvim_set_hl(0, n, opts)
  end
end

---Clear the foreground color of the highlight group leaving everything else intact.
---@param n string the name of the highlight group
function M.rmfg(n)
  local hl = A.nvim_get_hl_by_name(n, true)
  hl.foreground = nil
  A.nvim_set_hl(0, n, hl)
end

---Fetch the foreground of a highlight group
---@param n string the highlight group
function M.fgof(n)
  local fg = A.nvim_get_hl_by_name(n, true).foreground
  return vim.F.if_nil(fg, Color:new({ name = "white" }))
end

---Only assign a background color to a highlight group.
---@param n string highlight group name
---@param bg Color background color of the highlight group
---@param opts? table<number|string, string|number|boolean> other options that will be passed into |nvim_set_hl()|
function M.bg(n, bg, opts)
  bg = bg:HEX(true)
  if not opts then
    A.nvim_set_hl(0, n, { background = bg })
  else
    opts.background = bg
    opts = util.tbl.trnopts(opts)
    A.nvim_set_hl(0, n, opts)
  end
end

---Clear the background color of the highlight group leaving everything else intact.
---@param n string the name of the highlight group
function M.rmbg(n)
  local hl = A.nvim_get_hl_by_name(n, true)
  hl.background = nil
  A.nvim_set_hl(0, n, hl)
end

---Fetch the background of a highlight group
---@param n string the highlight group
function M.bgof(n)
  local background = A.nvim_get_hl_by_name(n, true).background
  return vim.F.if_nil(background, Color:new({ name = "white" }))
end

---Only assign a special color to a highlight group.
---@param n string highlight group name
---@param sp Color special color of the highlight group
---@param opts? table<number|string, string|number|boolean> other options that will be passed into |nvim_set_hl()|
function M.sp(n, sp, opts)
  sp = sp:HEX(true)
  if not opts then
    A.nvim_set_hl(0, n, { special = sp })
  else
    opts.special = sp
    opts = util.tbl.trnopts(opts)
    A.nvim_set_hl(0, n, opts)
  end
end

---Clear the special color of the highlight group leaving everything else intact.
---@param n string the name of the highlight group
function M.rmsp(n)
  local hl = A.nvim_get_hl_by_name(n, true)
  hl.special = nil
  A.nvim_set_hl(0, n, hl)
end

---Fetch the special of a highlight group
---@param n string the highlight group
function M.spof(n)
  local sp = A.nvim_get_hl_by_name(n, true).special
  return vim.F.if_nil(sp, Color:new({ name = "white" }))
end

return M

---vim:filetype=lua
