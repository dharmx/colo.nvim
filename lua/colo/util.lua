---@module "colo.util"
---@author dharmx
---@license GPL-3.0

local M = {}

local api = vim.api
local fn = vim.fn

---@module "plenary.scandir"
local scandir = require("plenary.scandir")

---Table utils.
M.tbl = {}

---Remove boolean keys from a table.
---@param options table<boolean|any, any>
---@return table
function M.tbl.rm_bool(options)
  if options then
    options[true] = nil
    options[false] = nil
  end
  return options
end

---Sum of an array
---@param array table<number>
---@return number
function M.tbl.sum(array)
  local sum = 0
  for _, value in pairs(array) do
    sum = sum + value
  end
  return sum
end

---Helper for transforming indexed decoration options into key-value pairs.
---@param options table<number|string, string|number|boolean>
---@return table<number|string, string|number|boolean>
function M.tbl.transform_options(options)
  for index, value in ipairs(options) do
    options[index] = nil
    options[value] = true
  end
  return options
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
  local runtime_paths = api.nvim_list_runtime_paths()
  for index, path in ipairs(runtime_paths) do
    if path:match("nvim%-colo$") then return path end
  end

  -- use plenary.scan_dir for looking at the plugin installation directory
  local data_path = fn.stdpath("data") .. "/site/pack"
  return scandir.scan_dir(data_path, {
    depth = 3,
    silent = true,
    only_dirs = true,
    search_pattern = "/%w+/nvim%-colo$",
  })[1]
end

---Scan for both the plugin directory and the user configuration directory.
---@param fragment string
---@param options table<string, boolean|function>
---  options.user      (boolean): add only user paths.
---  options.on_insert (fun(path: string) -> string): callback that may change the path when detected.
---@return table<string>
function M.plugin.scan(fragment, options)
  options = vim.F.if_nil(options, {})
  fragment = vim.F.if_nil(fragment, "")
  if fragment:sub(1, 1) ~= "/" then fragment = "/" .. fragment end

  local scan_path
  if options.user then
    options.user = nil
    scan_path = vim.fn.stdpath("config")
  else
    scan_path = M.plugin.path()
  end
  local results = scandir.scan_dir(("%s/lua/colo%s"):format(scan_path, fragment), options)

  if #results > 0 and options.on_insert then
    for index, path in ipairs(results) do
      results[index] = options.on_insert(path)
    end
  end
  return results
end

---Utilities that are mainly used as callbacks.
M.canned = {}

---Canned function to remove the /../../plugin_path/lua part from /../../plugin_path/lua/colo/groups/base/prompts.lua
---@param path string
---@return string
function M.canned.to_module_path(path)
  return fn.fnamemodify(path, (":s?%s??:r"):format(M.plugin.path() .. "/lua")):gsub("/", "."):sub(2)
end

---Remove just the extension from the path. See |filename-modifiers| and |fnamemodify()|.
---@param path string
---@return string
function M.canned.filenamermx(path) return fn.fnamemodify(path, ":r") end

return M

---vim:filetype=lua
