---@module "colo.util"
---@author dharmx
---@license GPL-3.0

local M = {}

---@module "plenary.functional"
local F = require("plenary.functional")
---@module "plenary.path"
local Path = require("plenary.path")

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

return M

-- vim:filetype=lua
