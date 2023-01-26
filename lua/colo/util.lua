---@module "colo.util"
---@author dharmx
---@license GPL-3.0

local M = {}

local A = vim.api
local scan = require("plenary.scandir").scan_dir
local F = vim.fn

---Table utils.
M.tbl = {}

---Remove boolean keys from a table.
---@param opts table<boolean|any, any>
---@return table
function M.tbl.rm_bool(opts)
  if opts then
    opts[true] = nil
    opts[false] = nil
  end
  return opts
end

---Sum of an array
---@param arr table<number>
---@return number
function M.tbl.sum(arr)
  local s = 0
  for _, v in pairs(arr) do
    s = s + v
  end
  return s
end

---Helper for transforming indexed decoration options into key-value pairs.
---@param opts table<number|string, string|number|boolean>
---@return table<number|string, string|number|boolean>
function M.tbl.trnopts(opts)
  for i, v in ipairs(opts) do
    opts[i] = nil
    opts[v] = true
  end
  return opts
end

---String utils.
M.str = {}

---Uppercases the initial charater of words.
---@param item string
---@return string
function M.str.capitalize(item) return (item:gsub("%a", string.upper, 1)) end

---Remove all leading whitespace characters.
---@param item string
---@return string
function M.str.trim_left(item) return (item:gsub("^%s*", "")) end

---Remove all trailing whitespace characters.
---@param item string
---@return string
function M.str.trim_right(item)
  local len = #item
  while len > 0 and item:find("^%s", len) do
    len = len - 1
  end
  return item:sub(1, len)
end

---Plugin utils.
M.plugin = {}

---Returns the path where the plugin directory is at.
---@return string
function M.plugin.path()
  local runtime_paths = A.nvim_list_runtime_paths()
  for _, path in ipairs(runtime_paths) do
    if path:match("nvim%-colo$") then return path end
  end

  -- use plenary.scan_dir for looking at the plugin installation directory
  local data_path = F.stdpath("data") .. "/site/pack"
  return scan(data_path, {
    depth = 3,
    silent = true,
    only_dirs = true,
    search_pattern = "/%w+/nvim%-colo$",
  })[1]
end

---Scan for both the plugin directory and the user configuration directory.
---@param f string
---@return table<string>
function M.plugin.scan(f, opts)
  opts = vim.F.if_nil(opts, {})
  f = vim.F.if_nil(f, "")
  if f:sub(1, 1) ~= "/" then f = "/" .. f end

  local scan_path
  if opts.user then
    opts.user = nil
    scan_path = F.stdpath("config")
  else
    scan_path = M.plugin.path()
  end
  local res = scan(("%s/lua/colo%s"):format(scan_path, f), opts)

  if #res > 0 and opts.on_insert then
    for i, path in ipairs(res) do
      res[i] = opts.on_insert(path)
    end
  end
  return res
end

return M

---vim:filetype=lua
