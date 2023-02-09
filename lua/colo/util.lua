local M = {}

local A = vim.api
local scan = require("plenary.scandir").scan_dir
local F = vim.fn

M.list = {}

function M.list.rmbool(opts)
  if opts then
    opts[true] = nil
    opts[false] = nil
  end
  return opts
end

function M.list.sum(list)
  local sum = 0
  for _, item in pairs(list) do
    sum = sum + item
  end
  return sum
end

function M.list.list2boolmap(opts)
  for index, value in ipairs(opts) do
    opts[index] = nil
    opts[value] = true
  end
  return opts
end

M.line = {}

function M.line.capitalize(item) return (item:gsub("%a", string.upper, 1)) end

function M.line.ltrim(item) return (item:gsub("^%s*", "")) end

function M.line.rtrim(item)
  local len = #item
  while len > 0 and item:find("^%s", len) do
    len = len - 1
  end
  return item:sub(1, len)
end

M.plugin = {}

function M.plugin.path()
  local runtime_paths = A.nvim_list_runtime_paths()
  for _, path in ipairs(runtime_paths) do
    if path:match("nvim%-colo$") then return path end
  end

  local data_path = F.stdpath("data") .. "/site/pack"
  return scan(data_path, {
    depth = 3,
    silent = true,
    only_dirs = true,
    search_pattern = "/%w+/nvim%-colo$",
  })[1]
end

function M.plugin.scan(file, opts)
  opts = vim.F.if_nil(opts, {})
  file = vim.F.if_nil(file, "")
  if file:sub(1, 1) ~= "/" then file = "/" .. file end

  local scan_path
  if opts.user then
    opts.user = nil
    scan_path = F.stdpath("config")
  else
    scan_path = M.plugin.path()
  end
  local results = scan(("%s/lua/colo%s"):format(scan_path, file), opts)

  if #results > 0 and opts.on_insert then
    for index, path in ipairs(results) do
      results[index] = opts.on_insert(path)
    end
  end
  return results
end

return M
