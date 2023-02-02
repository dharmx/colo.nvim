local M = {}

local A = vim.api
local scan = require("plenary.scandir").scan_dir
local F = vim.fn

M.tbl = {}

function M.tbl.rm_bool(opts)
  if opts then
    opts[true] = nil
    opts[false] = nil
  end
  return opts
end

function M.tbl.sum(arr)
  local s = 0
  for _, v in pairs(arr) do
    s = s + v
  end
  return s
end

function M.tbl.trnopts(opts)
  for i, v in ipairs(opts) do
    opts[i] = nil
    opts[v] = true
  end
  return opts
end

M.str = {}

function M.str.capitalize(item) return (item:gsub("%a", string.upper, 1)) end

function M.str.trim_left(item) return (item:gsub("^%s*", "")) end

function M.str.trim_right(item)
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

-- vim:filetype=lua
