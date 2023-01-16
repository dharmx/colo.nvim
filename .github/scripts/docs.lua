---@diagnostic disable: unused-local, assign-type-mismatch, cast-local-type

local scandir = require("plenary.scandir")
local Task = require("plenary.job")
local Path = require("plenary.path")

---@type Path
local docpath = Path:new("./doc")
local exclude = { "logos", "doc", "plugin", "extensions", "themes", "telescope", "groups", "LICENSE" }

local function on_insert(path)
  local data = vim.fn.readfile(path)
  table.remove(data, #data)
  local tmpfile = vim.fn.tempname() .. ".lua"
  vim.fn.writefile(data, tmpfile)

  local parsed = vim.fn.system({ "lemmy-help", "-f", "-a", "-c", "-t", tmpfile })
  parsed = vim.split(parsed, "\n", { plain = true })
  docpath:mkdir({ exists_ok = true, parents = true })
  local tail = vim.fn.fnamemodify(path, ":t:r")
  local head = vim.fn.fnamemodify(path, ":h:t")

  ---@type string
  local doc, _ = (docpath / (tail .. ".txt")).filename:gsub("init%.txt$", head .. ".txt")
  vim.fn.writefile(parsed, doc)
end

local function search_pattern(path)
  for _, pattern in ipairs(exclude) do
    if path:match(pattern) then return false end
  end
  return true
end

local function scan(path)
  scandir.scan_dir(path, { on_insert = on_insert, search_pattern = search_pattern, add_dirs = false })
end

scan("./lua")
scan("./plugin")

-- vim:filetype=lua
