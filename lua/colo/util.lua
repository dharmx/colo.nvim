---@module "colo.util"
---@author dharmx
---@license GPL-3.0

local M = {}

local ap = vim.api
local fn = vim.fn

---@module "plenary.scandir"
local scn = require("plenary.scandir")

M.tbl = {}

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

function M.tbl.rm_bool(options)
  if options then
    options[true] = nil
    options[false] = nil
  end
  return options
end

---Helper for transforming indexed decoration options into key-value pairs.
---@param options table<number | string, string | number | boolean>
---@return table<number | string, string | number | boolean>
function M.tbl.transform_options(options)
  for index, value in ipairs(options) do
    options[index] = nil
    options[value] = true
  end
  return options
end

M.plugin = {}

function M.plugin.path()
  local runtime_paths = ap.nvim_list_runtime_paths()
  for index, path in ipairs(runtime_paths) do
    if path:match("nvim%-colo$") then
      return path
    end
  end

  local data_path = fn.stdpath("data") .. "/site/pack"
  return scn.scan_dir(data_path, {
    depth = 3,
    silent = true,
    only_dirs = true,
    search_pattern = "/%w+/nvim%-colo$",
  })[1]
end

function M.plugin.scan(fragment, options)
  options = options or {}
  fragment = fragment or ""
  if fragment:sub(1, 1) ~= "/" then
    fragment = "/" .. fragment
  end

  local scan_path
  if options.user then
    options.user = nil
    scan_path = vim.fn.stdpath("config")
  else
    scan_path = M.plugin.path()
  end
  local results = scn.scan_dir(("%s/lua/colo%s"):format(scan_path, fragment), options)

  if #results > 0 and options.on_insert then
    for index, path in ipairs(results) do
      results[index] = options.on_insert(path)
    end
  end
  return results
end

function M.plugin.to_module_path(path)
  return fn.fnamemodify(path, (":s?%s??:r"):format(M.plugin.path() .. "/lua")):gsub("/", "."):sub(2)
end

return M

---vim:filetype=lua
