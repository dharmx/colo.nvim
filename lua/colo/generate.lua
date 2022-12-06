---@module "colo.generate"
---@author dharmx
---@license GPL-3.0

local M = {}

local headers = [[
---vim:filetype=lua:fileencoding=utf-8
---Generated by nvim-colo
---@module %q

local hl = vim.api.nvim_set_hl

vim.g.colors_name = %q
vim.o.background = %q
]]

---@module "plenary.path"
local Path = require("plenary.path")

---@module "plenary.scandir"
local scan = require("plenary.scandir")

---@module "colo.util"
local util = require("colo.util")

function M.get_all_hl()
  local names = vim.fn.getcompletion("", "highlight")
  local hl_info = {}
  for _, name in ipairs(names) do
    hl_info[name] = vim.api.nvim_get_hl_by_name(name, true)
  end
  return hl_info
end

local function hl_tbl_tostring(hl_tbl)
  if hl_tbl[true] or hl_tbl[false] then
    return "{}"
  end

  local tbl_form = "{ "
  for attribute, value in pairs(hl_tbl) do
    if type(value) == "boolean" then
      value = value and "true" or "false"
    end
    if attribute == "foreground" or attribute == "background" or attribute == "special" then
      value = ([["#%06X"]]):format(value)
    end
    tbl_form = ("%s%s = %s, "):format(tbl_form, attribute, value)
  end
  return tbl_form:sub(1, #tbl_form - 2) .. " }"
end

function M.generate_from_hl(theme, background)
  local hl_format = { headers:format(theme, theme, background) }
  local all_hl = M.get_all_hl()
  for name, value in pairs(all_hl) do
    table.insert(hl_format, ([[hl(0, %q, %s)]]):format(name, hl_tbl_tostring(value)))
  end
  return hl_format
end

function M.get_all_themes()
  local themes = {}
  if Path:new(vim.fn.stdpath("config") .. "/lua/colo/themes"):exists() then
    themes.user = util.scan_plugin_dir(vim.fn.stdpath("config"), "/lua/colo/themes", 3)
  end
  if Path:new(util.plugin_path() .. "/lua/colo/themes"):exists() then
    themes.plugin = util.scan_plugin_dir(util.plugin_path(), "/lua/colo/themes", 3)
  end
  for index, theme in ipairs(themes) do
    themes[index] = require(theme)
  end
  return themes
end

function M.generate_all_themes()
  local themes = M.get_all_themes()
  themes = vim.tbl_flatten
  return themes
end

return M

---vim:filetype=lua
