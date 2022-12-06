---@module "colo.util"
---@author dharmx
---@license GPL-3.0

local M = {}

---@module "plenary.functional"
local F = require("plenary.functional")
---@module "plenary.path"
local Path = require("plenary.path")

---@module "plenary.tbl"
local tbl = require("plenary.tbl")
---@module "plenary.scandir"
local scan = require("plenary.scandir")

---Get base16 colors from Xresources - depends on xrdb
---@return table | nil
function M.get_xresources()
  local xrdb_exists = F.any(function(_, path)
    return Path:new(path .. "/xrdb"):exists()
  end, {
    "/bin",
    "/usr/bin",
    "/usr/sbin",
    "/usr/local/bin",
    "/usr/local/sbin",
  })

  if not xrdb_exists then
    vim.api.nvim_notify("xorg-xrdb needs to be installed", vim.log.levels.ERROR, {})
    return
  end

  local xrdb_query = vim.split(vim.api.nvim_exec("!xrdb -query", true):sub(17, 390), "\n", {
    plain = false,
    trimempty = true,
  })

  local xcolors = {}
  for _, xcol in ipairs(xrdb_query) do
    local xcol_spl = vim.split(xcol, ":\t", {
      plain = false,
      trimempty = true,
    })

    local key = xcol_spl[1]
    local key_sub = key:sub(8)
    if #key_sub == 1 then
      xcolors["base0" .. key_sub] = xcol_spl[2]:upper()
    elseif #key_sub == 2 then
      xcolors["base" .. key_sub] = xcol_spl[2]:upper()
    end
  end

  xcolors["base00"] = vim
    .split(xrdb_query[1], ":\t", {
      plain = false,
      trimempty = true,
    })[2]
    :upper()

  return xcolors
end

---See if a number is in range of given limits
---@param number number | string the value that needs to be checked
---@param finish number ending range
---@return number | nil | string
function M.in_range(number, finish)
  assert(number, "number should not be nil")
  local temp = number

  if type(number) == "string" and number:find("%.") and tonumber(number) == 1 then
    number = tonumber(number) * 100 .. "%"
  end

  if type(number) == "string" and number:find("%%") then
    temp = (tonumber(number:sub(1, #number - 1)) * finish) / 100
  end

  assert(temp >= 0 and temp <= finish, "number should be between 0-255/0-1/0-100")
  return temp
end

---Types of operations
---@enum operations
M.operations = {
  ---Increase operation shorthand
  I = 1,
  ---Decrease operation shorthand
  D = 2,
  ---Increase operation
  INCREASE = 1,
  ---Decrease operation
  DECREASE = 2,
}

---Limit percentage overflow
---@param current number current percentage value
---@param amount number increase current percentage by
---@param operation operations
function M.limit(current, amount, operation)
  if operation == M.operations.INCREASE then
    return (current + amount) > 100 and 100 or current + amount
  elseif operation == M.operations.DECREASE then
    return (current - amount) < 0 and 0 or current - amount
  end
  error("operation should be either I or, D", vim.log.levels.ERROR)
end

---Bound a number
---@param number number | string
---@param finish number
---@return number
function M.bound(number, finish)
  if type(number) == "string" and number:find("%.") and tonumber(number) == 1 then
    number = "100%"
  end

  local percent = type(number) == "string" and number:find("%%")
  number = math.min(finish, math.max(0, tonumber(number)))
  if percent then
    ---@diagnostic disable-next-line: param-type-mismatch
    number = tonumber(number * finish, 10) / 100
  end

  if math.abs(number - finish) < 0.000001 then
    return 1
  end
  return (number % finish) / tonumber(finish)
end

---Sum of an array
---@param array table<number>
---@return number
function M.tbl_sum(array)
  local sum = 0
  for _, value in pairs(array) do
    sum = sum + value
  end
  return sum
end

---Helper utility for adding a dashboard item
---
---Example: Add a button to open telescope live_grep builtin
---<pre>
---generate_button(function()
---require("telescope.builtin").live_grep()
---end, {
---  width = 25,
---  cursor = 15,
---  align = "center",
---  spacing = 2,
---  shortcut = {
---    value = " T ",
---    align = "right",
---    hl = "AlphaKeyPrefix",
---    lead = " ",
---    trail = " ",
---  },
---  label = {
---    value = "Grep",
---    hl = "MoreMsg",
---  },
---  icon = {
---    value = " ",
---    hl = "MsgSeparator",
---  },
---})
---</pre>
---
---@param callback function callback to run when the button is pressed
---@param metadata table configures button function, layout and contents
---                      + icon.value
---                      + icon.hl
---                      + label.value
---                      + label.hl
---                      + shortcut.value
---                      + shortcut.hl
---                      + shortcut.align
---                      + shortcut.before
---                      + shortcut.after
---                      + cursor
---                      + width
---                      + align
---                      + spacing
---@return table
function M.generate_button(callback, metadata)
  local setting = {
    type = "button",
    on_press = callback,
    val = ("%s%s%s"):format(metadata.icon.value, (" "):rep(metadata.spacing or 2), metadata.label.value),
    opts = {
      position = metadata.align or "center", ---left | right | center
      shortcut = metadata.shortcut.value,
      cursor = metadata.cursor or 5,
      width = metadata.width or 25,
      align_shortcut = metadata.shortcut.align or "right", ---right | left
      hl_shortcut = metadata.shortcut.hl,
      hl = {},
    },
  }

  if metadata.shortcut.before then
    setting.opts.shortcut = metadata.shortcut.before .. setting.opts.shortcut
  else
    setting.opts.shortcut = " " .. setting.opts.shortcut
  end

  if metadata.shortcut.after then
    setting.opts.shortcut = setting.opts.shortcut .. metadata.shortcut.after
  else
    setting.opts.shortcut = setting.opts.shortcut .. " "
  end

  local icon_length = metadata.icon.value:len()
  local label_length = metadata.label.value:len()
  setting.opts.hl = {
    { metadata.icon.hl, 1, icon_length },
    { metadata.label.hl, icon_length + metadata.spacing, icon_length + (metadata.spacing or 2) + label_length },
  }

  return setting
end

function M.tbl_deep_to_hex(items)
  for key, value in pairs(items) do
    if getmetatable(value) then
      items[key] = value:hex(true)
    elseif type(value) == "table" then
      items[key] = M.tbl_deep_to_hex(value)
    end
  end
  return items
end

function M.plugin_path()
  local path = vim.fn.stdpath("data") .. "/site/pack"
  path = scan.scan_dir(path, {
    depth = 3,
    search_pattern = path .. "/[A-Za-z0-9]+/[A-Za-z0-9]+/nvim%-colo$",
  })[1]
  return path
end

function M.scan_plugin_dir(main_path, after, depth)
  local modules = {}
  scan.scan_dir(main_path .. after, {
    depth = depth,
    add_dirs = false,
    on_insert = function(path)
      local result, _ = vim.fn.fnamemodify(path, (":s?%s??:r"):format(main_path .. "/lua")):gsub("/", ".")
      table.insert(modules, result:sub(2, #result))
    end,
  })
  return modules
end

return M

---vim:filetype=lua
