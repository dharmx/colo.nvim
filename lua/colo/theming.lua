---@module "colo.theming"
---@author dharmx
---@license GPL-3.0

local M = {}

---@module "colo.color"
local Color = require("colo.color")
---@module "plenary.reload"
local rel = require("plenary.reload")
---@module "plenary.scan_dir"
local scan = require("plenary.scandir")
---@module "plenary.tbl"
local tbl = require("plenary.tbl")
---@module "colo"
local colo = require("colo")

---This is a convenience enum. See |highlight-args|
---@enum decorations
local deco = {
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

---Helper for transforming indexed decoration options into key-value pairs.
---@param options table<number | string, string | number | boolean>
---@return table<number | string, string | number | boolean>
function M.transform_options(options)
  for key, value in pairs(options) do
    if type(key) == "number" then
      options[key] = nil
      options[value] = true
    elseif type(key) == "boolean" then
      options[key] = nil
    end
  end
  return options
end

---Fetch a highlight group and wrap all color attributes like foreground into a Color object
---@param name string highlight group name
---@return table<Color | boolean>
function M.wrap(name)
  local search_keys = { "foreground", "background", "special" }
  local hl_info = vim.api.nvim_get_hl_by_name(name, true)
  for key, val in pairs(hl_info) do
    if vim.tbl_contains(search_keys, key) then
      hl_info[key] = Color:new({ hexcode = string.format("#%06X", value) })
    end
  end
  return hl_info
end

---Clear the highlight group.
---@param name string the name of the highlight group
function M.clear(name)
  vim.api.nvim_set_hl(0, name, {})
end

---Link one highlighting group with another.
---@param source string the highlight group that needs to be linked to
---@param target string the highlight group that needs to be linked with
function M.link(source, target)
  vim.api.nvim_set_hl(0, source, {
    link = target,
  })
end

---sets neovim terminal color
---@param base number basen value from base16 color architecture
---@param value Color color of the base
function M.terminal(base, value)
  vim.g["terminal_color_" .. base] = value:hex(true)
end

---Only apply font decorations/styles to the selected hl group.
---@param name string name of the hl group
---@param attributes table font options that are needed to be applied to that hl group
function M.style(name, attributes)
  attributes = M.transform_options(attributes)
  local hl_info = M.transform_options(vim.api.nvim_get_hl_by_name(name, true))
  attributes = vim.tbl_extend("force", attributes, hl_info)
  vim.api.nvim_set_hl(0, name, attributes)
end

---simple highlighting function. only sets the background and foreground of the highlight group.
---@param name string highlight group name
---@param background Color background color of the highlight group
---@param foreground Color foreground color of the highlight group
---@param opts? table<number | string, string | number | boolean> other options that will be passed into nvim_set_hl
function M.short_set(name, background, foreground, opts)
  background = background:hex(true)
  foreground = foreground:hex(true)
  if not opts then
    vim.api.nvim_set_hl(0, name, { background = background, foreground = foreground })
  else
    opts.background = background
    opts.foreground = foreground
    opts = M.transform_options(opts)
    vim.api.nvim_set_hl(0, name, opts)
  end
end

---Wrapper around nvim_set_hl.
---@param name string highlight group name
---@param opts? table<number | string, string | number | boolean> other options that will be passed into nvim_set_hl
function M.set(name, opts)
  ---@diagnostic disable-next-line: param-type-mismatch
  opts = M.transform_options(opts)
  opts.foreground = opts.foreground and opts.foreground:hex(true) or nil
  opts.background = opts.background and opts.background:hex(true) or nil
  opts.special = opts.special and opts.special:hex(true) or nil
  vim.api.nvim_set_hl(0, name, opts or {})
end

---Only assign a foreground color to a highlight group.
---@param name string highlight group name
---@param foreground Color foreground color of the highlight group
---@param opts? table<number | string, string | number | boolean> other options that will be passed into nvim_set_hl
function M.foreground(name, foreground, opts)
  foreground = foreground:hex(true)
  if not opts then
    vim.api.nvim_set_hl(0, name, { foreground = foreground })
  else
    opts.foreground = foreground
    opts = M.transform_options(opts)
    vim.api.nvim_set_hl(0, name, opts)
  end
end

---Clear the foreground color of the highlight group leaving everything else intact.
---@param name string the name of the highlight group
function M.clear_foreground(name)
  local hl_info = vim.api.nvim_get_hl_by_name(name, true)
  hl_info.foreground = nil
  vim.api.nvim_set_hl(0, name, hl_info)
end

---Fetch the foreground of a highlight group
---@param name string the highlight group
---@param fallback_col Color? fallback color if the foreground does not exist
function M.foreground_of(name, fallback_col)
  local foreground = vim.api.nvim_get_hl_by_name(name, true).foreground
  if foreground then
    return Color:new({ hexcode = string.format("#%06X", foreground) })
  end
  return fallback_col
end

---Only assign a background color to a highlight group.
---@param name string highlight group name
---@param background Color background color of the highlight group
---@param opts? table<number | string, string | number | boolean> other options that will be passed into nvim_set_hl
function M.background(name, background, opts)
  background = background:hex(true)
  if not opts then
    vim.api.nvim_set_hl(0, name, { background = background })
  else
    opts.background = background
    opts = M.transform_options(opts)
    vim.api.nvim_set_hl(0, name, opts)
  end
end

---Clear the background color of the highlight group leaving everything else intact.
---@param name string the name of the highlight group
function M.clear_background(name)
  local hl_info = vim.api.nvim_get_hl_by_name(name, true)
  hl_info.background = nil
  vim.api.nvim_set_hl(0, name, hl_info)
end

---Fetch the background of a highlight group
---@param name string the highlight group
---@param fallback_col Color? fallback color if the background does not exist
function M.background_of(name, fallback_col)
  local background = vim.api.nvim_get_hl_by_name(name, true).background
  if background then
    return Color:new({ hexcode = string.format("#%06X", background) })
  end
  return fallback_col
end

---Only assign a special color to a highlight group.
---@param name string highlight group name
---@param special Color special color of the highlight group
---@param opts? table<number | string, string | number | boolean> other options that will be passed into nvim_set_hl
function M.special(name, special, opts)
  special = special:hex(true)
  if not opts then
    vim.api.nvim_set_hl(0, name, { special = special })
  else
    opts.special = special
    opts = M.transform_options(opts)
    vim.api.nvim_set_hl(0, name, opts)
  end
end

---Clear the special color of the highlight group leaving everything else intact.
---@param name string the name of the highlight group
function M.clear_special(name)
  local hl_info = vim.api.nvim_get_hl_by_name(name, true)
  hl_info.special = nil
  vim.api.nvim_set_hl(0, name, hl_info)
end

---Fetch the special of a highlight group
---@param name string the highlight group
---@param fallback_col Color? fallback color if the special does not exist
function M.special_of(name, fallback_col)
  local special = vim.api.nvim_get_hl_by_name(name, true).special
  if special then
    return Color:new({ hexcode = string.format("#%06X", special) })
  end
  return fallback_col
end

M.decorations = deco
return M

---vim:filetype=lua
