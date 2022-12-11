---@module "colo.theming"
---@author dharmx
---@license GPL-3.0

local M = {}

local ap = vim.api

---@module "colo.color"
local Color = require("colo.color")
---@module "colo.util"
local util = require("colo.util")

---This is a convenience enum. See |highlight-args|
---@enum decorations
M.decorations = {
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
---@param name string highlight group name
---@return table<Color | boolean>
function M.wrap(name)
  local search_keys = { "foreground", "background", "special" }
  local ok, hl_info = pcall(ap.nvim_get_hl_by_name, name, true)
  hl_info = ok and util.tbl.rm_bool(hl_info) or {}

  for key, value in pairs(hl_info) do
    if vim.tbl_contains(search_keys, key) then
      hl_info[key] = Color:new({ hexcode = ("#%06X"):format(value) })
    end
  end
  return hl_info
end

---Clear the highlight group.
---@param name string the name of the highlight group
function M.clear(name)
  ap.nvim_set_hl(0, name, {})
end

---Link one highlighting group with another.
---@param source string the highlight group that needs to be linked to
---@param target string the highlight group that needs to be linked with
function M.link(source, target)
  ap.nvim_set_hl(0, source, {
    link = target,
  })
end

---sets neovim terminal color
---@param base number basen value from base16 color architecture
---@param value Color color of the base
function M.terminal(base, value)
  vim.g["terminal_color_" .. base] = value:hex(true)
end

function M.terminal_all(colors)
  for index, value in ipairs(colors) do
    M.terminal(index - 1, value)
  end
end

---Only apply font decorations/styles to the selected hl group.
---@param name string name of the hl group
---@param attributes table font options that are needed to be applied to that hl group
function M.style(name, attributes)
  attributes = util.tbl.transform_options(attributes)
  local hl_info = util.tbl.rm_bool(ap.nvim_get_hl_by_name(name, true))
  attributes = vim.tbl_extend("force", attributes, hl_info)
  ap.nvim_set_hl(0, name, attributes)
end

---simple highlighting function. only sets the background and foreground of the highlight group.
---@param name string highlight group name
---@param background Color background color of the highlight group
---@param foreground Color foreground color of the highlight group
---@param options? table<number | string, string | number | boolean> other options that will be passed into nvim_set_hl
function M.short_set(name, background, foreground, options)
  background = background:hex(true)
  foreground = foreground:hex(true)
  if not options then
    ap.nvim_set_hl(0, name, { background = background, foreground = foreground })
  else
    options.background = background
    options.foreground = foreground
    options = util.tbl.transform_options(options)
    ap.nvim_set_hl(0, name, options)
  end
end

---Wrapper around nvim_set_hl.
---@param name string highlight group name
---@param options? table<number | string, string | number | boolean> other options that will be passed into nvim_set_hl
function M.set(name, options)
  ---@diagnostic disable-next-line: param-type-mismatch
  options = util.tbl.transform_options(util.tbl.rm_bool(options))
  options.foreground = options.foreground and options.foreground:hex(true) or nil
  options.background = options.background and options.background:hex(true) or nil
  options.special = options.special and options.special:hex(true) or nil
  ap.nvim_set_hl(0, name, options or {})
end

---Only assign a foreground color to a highlight group.
---@param name string highlight group name
---@param foreground Color foreground color of the highlight group
---@param options? table<number | string, string | number | boolean> other options that will be passed into nvim_set_hl
function M.foreground(name, foreground, options)
  foreground = foreground:hex(true)
  if not options then
    ap.nvim_set_hl(0, name, { foreground = foreground })
  else
    options.foreground = foreground
    options = util.tbl.transform_options(options)
    ap.nvim_set_hl(0, name, options)
  end
end

---Clear the foreground color of the highlight group leaving everything else intact.
---@param name string the name of the highlight group
function M.clear_foreground(name)
  local hl_info = ap.nvim_get_hl_by_name(name, true)
  hl_info.foreground = nil
  ap.nvim_set_hl(0, name, hl_info)
end

---Fetch the foreground of a highlight group
---@param name string the highlight group
function M.foreground_of(name)
  local foreground = ap.nvim_get_hl_by_name(name, true).foreground
  return foreground or Color:new({ name = "white" })
end

---Only assign a background color to a highlight group.
---@param name string highlight group name
---@param background Color background color of the highlight group
---@param options? table<number | string, string | number | boolean> other options that will be passed into nvim_set_hl
function M.background(name, background, options)
  background = background:hex(true)
  if not options then
    ap.nvim_set_hl(0, name, { background = background })
  else
    options.background = background
    options = util.tbl.transform_options(options)
    ap.nvim_set_hl(0, name, options)
  end
end

---Clear the background color of the highlight group leaving everything else intact.
---@param name string the name of the highlight group
function M.clear_background(name)
  local hl_info = ap.nvim_get_hl_by_name(name, true)
  hl_info.background = nil
  ap.nvim_set_hl(0, name, hl_info)
end

---Fetch the background of a highlight group
---@param name string the highlight group
function M.background_of(name)
  local background = ap.nvim_get_hl_by_name(name, true).background
  return fallback or Color:new({ name = "white" })
end

---Only assign a special color to a highlight group.
---@param name string highlight group name
---@param special Color special color of the highlight group
---@param options? table<number | string, string | number | boolean> other options that will be passed into nvim_set_hl
function M.special(name, special, options)
  special = special:hex(true)
  if not options then
    ap.nvim_set_hl(0, name, { special = special })
  else
    options.special = special
    options = util.tbl.transform_options(options)
    ap.nvim_set_hl(0, name, options)
  end
end

---Clear the special color of the highlight group leaving everything else intact.
---@param name string the name of the highlight group
function M.clear_special(name)
  local hl_info = ap.nvim_get_hl_by_name(name, true)
  hl_info.special = nil
  ap.nvim_set_hl(0, name, hl_info)
end

---Fetch the special of a highlight group
---@param name string the highlight group
function M.special_of(name)
  local special = ap.nvim_get_hl_by_name(name, true).special
  return special or Color:new({ name = "white" })
end

return M

---vim:filetype=lua
