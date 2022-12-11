---@module "colo.util"
---@author dharmx
---@license GPL-3.0

local M = {}

---@module "plenary.scandir"
local scan = require("plenary.scandir")

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

function M.plugin.path()
  local path = vim.fn.stdpath("data") .. "/site/pack"
  path = scan.scan_dir(path, {
    depth = 3,
    search_pattern = path .. "/[A-Za-z0-9]+/[A-Za-z0-9]+/nvim%-colo$",
  })[1]
  return path
end

M.theme = {}

function M.theme.colors(theme)
  return require("colo.themes." .. theme)
end

function M.theme.info(theme)
  local col = M.theme.colors(theme)
  return {
    author = col.author,
    name = col.name,
    description = col.description,
    source = col.source,
    background = col.background,
  }
end

function M.theme.current()
  return M.theme.colors(vim.g.colors_name)
end

return M

---vim:filetype=lua
