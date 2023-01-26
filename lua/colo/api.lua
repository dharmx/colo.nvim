---@diagnostic disable: param-type-mismatch
---@module "colo.api"
---@author dharmx
---@license GPL-3.0

local M = {}

local util = require("colo.util")
local tutil = require("colo.theme")
local conf = require("colo.config")
local rel = require("plenary.reload").reload_module

local F = vim.fn

---Theme utils.
M.theme = {}

---Get theme colors and info.
---@param name string
---@return table<string, string>
function M.theme.get(name) return require("colo.themes." .. name) end

---Get current theme colors and info.
---@return table
function M.theme.current() return M.theme.get(vim.g.colors_name) end

---Clear all highlights and reset syntax highlights.
function M.theme.clean()
  vim.o.background = nil
  vim.g.colors_name = nil
  vim.cmd.highlight("clear")
  if F.exists("syntax_on") then vim.cmd.syntax("reset") end
end

---Set a theme.
---@param name string
function M.theme.set(name)
  local theme = M.theme.get(name)
  vim.o.background = theme.background
  vim.g.colors_name = name
  local term, hls, o = M.theme.all(theme)
  tutil.set_term(term)

  for _, hl in ipairs(hls) do
    for n, v in pairs(hl) do
      tutil.set_hl(n, v)
    end
  end

  for n, v in pairs(o) do
    tutil.set_hl(n, v)
  end

  if not conf.current.manual and conf.current.reload.enable then M.theme.reload(conf.current.reload.items) end
  conf.set({ manual = false })
end

---@param mods table
function M.theme.reload(mods)
  for _, mod in ipairs(mods) do
    if type(mod) == "string" then
      rel(mod)
    elseif type(mod) == "table" then
      if mod.import then
        rel(mod[1])
        require(mod[1])
      end
      if mod.silent then
        rel(mod[1])
        pcall(require, mod[1])
      end
    end
  end
end

---Invert all highlight groups.
function M.theme.invert()
  local hls = F.getcompletion("", "highlight")
  for _, n in ipairs(hls) do
    local hl = tutil.wrap(n)
    if hl.foreground then hl.foreground = hl.foreground:invert() end
    if hl.background then hl.background = hl.background:invert() end
    if hl.special then hl.special = hl.special:invert() end
    tutil.set_hl(n, hl)
  end
end

---List all highlights that are stored in plugin_path/lua/colo/groups.
---@return table, table, table
function M.theme.all(col)
  local term_chunk = M.group.terminal(col)
  local hls = {
    M.group.base(col),
    M.group.integration(col),
    M.group.syntax(col),
  }
  local o = M.group.override(col)
  return term_chunk, hls, o
end

local function exclude_match(pat)
  for _, ex in ipairs(conf.current.exclude) do
    if pat:match(ex) then return false end
  end
  return true
end

local function list_all_user_themes()
  local user_path = F.stdpath("config") .. "/lua/colo/themes"
  if not vim.loop.fs_access(user_path, "X") then return {} end
  return F.readdir(user_path)
end

local function list_all_themes()
  return vim.tbl_flatten({ list_all_user_themes(), F.readdir(util.plugin.path() .. "/lua/colo/themes") })
end

---List all themes.
---@param opts table<string, function|string>
---@return table<string>
function M.theme.list(opts)
  opts = vim.tbl_extend("keep", vim.F.if_nil(opts, {}), {
    operation = "all",
    filter = function(item) return exclude_match(item) end,
    map = function(item) return F.fnamemodify(item, ":r") end,
  })

  local op = { all = list_all_themes, user = list_all_user_themes }
  local res = vim.tbl_map(opts.map, op[opts.operation]())
  return vim.tbl_filter(opts.filter, res)
end

---Utils relating to the plugin_path/lua/colo/groups part of the plugin.
M.group = {}

local function to_module_path(path)
  return F.fnamemodify(path, string.format(":s?%s??:r", util.plugin.path() .. "/lua")):gsub("/", "."):sub(2)
end

---Get paths in the plugin_path/lua/colo/groups directory and the user
---equivalent config_path/lua/colo/groups as well.
---@param name "base"|"syntax"|"integration"
---@return table
local function get_normal_group(name, col)
  local base_hl = util.plugin.scan("groups/" .. name, {
    add_dirs = false,
    on_insert = to_module_path,
    depth = 1,
  })

  for i, hl_file in ipairs(base_hl) do
    base_hl[i] = require(hl_file).prime(col)
  end

  local results = {}
  for _, hl_chunk in pairs(base_hl) do
    for hl_name, hl_value in pairs(hl_chunk) do
      results[hl_name] = hl_value
    end
  end
  return results
end

---Get modules in the {plugin_,config_}path/lua/colo/groups/base path.
---@return table
function M.group.base(col) return get_normal_group("base", col) end

---Get modules in the {plugin_,config_}path/lua/colo/groups/syntax path.
---@return table
function M.group.syntax(col) return get_normal_group("syntax", col) end

---Get modules in the {plugin_,config_}path/lua/colo/groups/integration path.
---@return table
function M.group.integration(col) return get_normal_group("integration", col) end

---Get module in the {plugin_,config_}path/lua/colo/groups/override path.
---@return table
function M.group.override(col)
  local present, hl_chunk = pcall(require, string.format("colo.groups.override.%s_%s", col.name, col.background))
  return present and hl_chunk.prime(col) or {}
end

---Get module in the {plugin_,config_}path/lua/colo/groups/extra/terminal path.
function M.group.terminal(col) return require("colo.groups.extra.terminal").prime(col) end

---Utils relating to aggregate styling and font styling.
M.aggregate = {}

---Categories of styles that are currently supported.
M.aggregate.categories = { "bold", "italic", "undercurl", "underline", "transparent", "all" }

---Get highlight groups for aggregates.
---@param ... any one or more options from aggregate.categories
---@return table
function M.aggregate.get(...)
  local options = vim.tbl_flatten({ ... })
  local items = require("colo.groups.extra.aggregate")

  if vim.tbl_contains(options, "all") then
    options = vim.list_slice(M.aggregate.categories, 1, #M.aggregate.categories - 1)
  end

  local results = {}
  for _, category in ipairs(options) do
    if vim.tbl_contains(M.aggregate.categories, category) then
      for _, hl_name in ipairs(items[category]) do
        results[hl_name] = tutil.wrap(hl_name)
      end
    end
  end
  return results
end

---Applies one or multiple aggregates.
---@param operation "add"|"+"|"remove"|"-"|"rm"|"transparent"|"toggle"
---@param ... any one or more options from aggregate.categories
function M.aggregate.set(operation, ...)
  local options = vim.tbl_flatten({ ... })
  if vim.tbl_contains(options, "all") then
    options = vim.list_slice(M.aggregate.categories, 1, #M.aggregate.categories - 1)
  end

  for _, category in ipairs(options) do
    if vim.tbl_contains(M.aggregate.categories, category) then
      local hl_chunk = M.aggregate.get({ category })
      for hl_name, hl_value in pairs(hl_chunk) do
        if operation == "add" then
          if category == "transparent" then
            hl_value.background = nil
          else
            hl_value[category] = true
          end
          tutil.set_hl(hl_name, hl_value)
        elseif operation == "remove" then
          if category == "transparent" then
            hl_value.background = nil ---TODO: restore from groups/*
          else
            hl_value[category] = false
          end
          tutil.set_hl(hl_name, hl_value)
        elseif operation == "transparent" then
          if category == "transparent" then
            hl_value.background = nil ---TODO: restore from groups/*
          else
            hl_value[category] = not hl_value[category]
          end
          tutil.set_hl(hl_name, hl_value)
        end
      end
    end
  end
end

---Add an aggregate.
---@param ... string[] one of the items from aggregate.categories.
function M.aggregate.add(...) M.aggregate.set("add", ...) end

---Remove an aggregate.
---@param ... string[] one of the items from aggregate.categories.
function M.aggregate.remove(...) M.aggregate.set("remove", ...) end

---Add/Remove an aggregate if it is already set.
---@param ... string[] one of the items from aggregate.categories.
function M.aggregate.toggle(...) M.aggregate.set("toggle", ...) end

return M

-- vim:filetype=lua
