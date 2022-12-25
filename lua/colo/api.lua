---@diagnostic disable: param-type-mismatch
---@module "colo.api"
---@author dharmx
---@license GPL-3.0

local M = {}

---@module "colo.util"
local util = require("colo.util")
---@module "colo.theming"
local theming = require("colo.theming")
---@module "colo.color"
local Color = require("colo.color")

---@module "plenary.reload"
local reload = require("plenary.reload")

local fn = vim.fn

---Theme utils.
M.theme = {}

---Get theme colors and info.
---@param name string
---@return table<string, string>
function M.theme.get(name)
  return require("colo.themes." .. name)
end

---Get current theme colors and info.
---@return table
function M.theme.current()
  return M.theme.get(vim.g.colors_name)
end

---Clear all highlights and reset syntax highlights.
function M.theme.clean()
  vim.o.background = nil
  vim.g.colors_name = nil
  vim.cmd.highlight("clear")
  if fn.exists("syntax_on") then
    vim.cmd.syntax("reset")
  end
end

---Set a theme.
---@param name string
function M.theme.set(name)
  vim.o.background = M.theme.get(name).background
  vim.g.colors_name = name
  reload.reload_module("colo.groups")

  local terminal, hl_chunks, overrides = M.theme.list_all_hl()
  theming.terminal_all(terminal)
  for index, hl_chunk in ipairs(hl_chunks) do
    for hl_name, hl_value in pairs(hl_chunk) do
      theming.set(hl_name, hl_value)
    end
  end

  for hl_name, hl_value in pairs(overrides) do
    ---@diagnostic disable-next-line: param-type-mismatch
    theming.set(hl_name, hl_value)
  end

  if _G.___colo_private.manual then
    _G.___colo_private.manual = false
    return
  end
  M.extension.reload_all()
end

---Invert all highlight groups.
function M.theme.invert()
  local hl_list = fn.getcompletion("", "highlight")
  local hl_chunks = {}
  for _, hl_name in ipairs(hl_list) do
    local hl = theming.wrap(hl_name)
    if hl.foreground then
      hl.foreground = hl.foreground:invert()
    end
    if hl.background then
      hl.background = hl.background:invert()
    end
    if hl.special then
      hl.special = hl.special:invert()
    end
    ---@diagnostic disable-next-line: param-type-mismatch
    theming.set(hl_name, hl)
  end
end

---List all highlights that are stored in plugin_path/lua/colo/groups.
---@param resolve boolean? when true it will require the module and false will return the module path
---@return table, table, table
function M.theme.list_all_hl(resolve)
  resolve = vim.F.if_nil(resolve, true)
  local term_chunk = M.group.terminal({ resolve = resolve })
  local hl_chunks = {
    M.group.base({ resolve = resolve, flatten = true }),
    M.group.integration({ resolve = resolve, flatten = true }),
    M.group.syntax({ resolve = resolve, flatten = true }),
  }
  local overrides = M.group.override({ resolve = resolve })
  return term_chunk, hl_chunks, overrides
end

---List all themes.
---@param options table<string, function|string>
---@return table<string>
function M.theme.list(options)
  local path_fragment = "/lua/colo/themes"
  options = vim.tbl_extend("keep", vim.F.if_nil(options, {}), {
    operation = "all",
    map_callback = function(path)
      return path
    end,
  })

  local user_path = fn.stdpath("config") .. path_fragment
  local operations = {
    all = function()
      local user_items = {}
      if vim.loop.fs_access(user_path, "X") then
        user_items = fn.readdir(user_path)
      end
      return vim.tbl_flatten({
        user_items,
        fn.readdir(util.plugin.path() .. path_fragment),
      })
    end,
    user = function()
      if not vim.loop.fs_access(user_path, "X") then
        return {}
      end
      return fn.readdir(user_path)
    end,
    plugin = function()
      return fn.readdir(util.plugin.path() .. path_fragment)
    end,
  }
  return vim.tbl_map(options.map_callback, operations[options.operation]())
end

---Utils related to recording of theme history.
M.cycle = {}

---Prepare and declare all needed variables for theme recording.
local function cycle_init()
  if not _G.___colo_private.cycle then
    return
  end

  local theme = M.theme.current()
  _G.___colo_private.cycle = nil
  _G.___colo_private.cycle_history = M.theme.list({
    operation = "all",
    map_callback = util.canned.filenamermx,
  })
  _G.___colo_private.cycle_total = #_G.___colo_private.cycle_history

  for index, value in ipairs(_G.___colo_private.cycle_history) do
    if value == theme.name .. "_" .. theme.background then
      _G.___colo_private.cycle_position = index
    end
  end
end

---Goto the next theme in the cycle.
function M.cycle.next()
  cycle_init()
  _G.___colo_private.cycle_position = (_G.___colo_private.cycle_position % _G.___colo_private.cycle_total) + 1
  M.theme.set(_G.___colo_private.cycle_history[_G.___colo_private.cycle_position])
end

---Goto the previous theme in the cycle.
function M.cycle.previous()
  cycle_init()
  if _G.___colo_private.cycle_position <= 1 then
    _G.___colo_private.cycle_position = _G.___colo_private.cycle_total
  else
    _G.___colo_private.cycle_position = _G.___colo_private.cycle_position - 1
  end
  M.theme.set(_G.___colo_private.cycle_history[_G.___colo_private.cycle_position])
end

---Goto a random theme in the cycle.
function M.cycle.random()
  cycle_init()
  _G.___colo_private.cycle_position = math.random(1, _G.___colo_private.cycle_total)
  M.theme.set(_G.___colo_private.cycle_history[_G.___colo_private.cycle_position])
end

---Utils relating to the plugin_path/lua/colo/groups part of the plugin.
M.group = {}

---Get paths in the plugin_path/lua/colo/groups directory and the user
---equivalent config_path/lua/colo/groups as well.
---@param aggregate "base"|"syntax"|"integration"
---@param options table<string, boolean> additional settings
---  options.resolve (boolean): require the module path
---  options.indexed (boolean): dump all module paths and sort them by groups
---  options.flatten (boolean): dump all module paths and flatten them
---@return table
local function get_normal_group(aggregate, options)
  options = vim.F.if_nil(options, {})
  assert(
    vim.tbl_contains({
      "base",
      "syntax",
      "integration",
    }, aggregate),
    "choose from base/integration/syntax"
  )
  local base_hl = util.plugin.scan("groups/" .. aggregate, {
    add_dirs = false,
    on_insert = util.canned.to_module_path,
  })

  if options.resolve then
    if options.indexed then
      for index, hl_path in ipairs(base_hl) do
        base_hl[index] = require(hl_path)
      end
    else
      for index, hl_path in ipairs(base_hl) do
        base_hl[index] = nil
        local split_hl = vim.split(hl_path, "%.", {})
        base_hl[split_hl[#split_hl]] = require(hl_path)
      end
    end

    if options.flatten then
      local results = {}
      for _, hl_chunk in pairs(base_hl) do
        for hl_name, hl_value in pairs(hl_chunk) do
          results[hl_name] = hl_value
        end
      end
      return results
    end
  end

  return base_hl
end

---Get modules in the {plugin_,config_}path/lua/colo/groups/base path.
---@param options table<string, boolean> additional settings
---  options.resolve (boolean): require the module path
---  options.indexed (boolean): dump all module paths and sort them by groups
---  options.flatten (boolean): dump all module paths and flatten them
---@return table
function M.group.base(options)
  return get_normal_group("base", options)
end

---Get modules in the {plugin_,config_}path/lua/colo/groups/syntax path.
---@param options table<string, boolean> additional settings
---  options.resolve (boolean): require the module path
---  options.indexed (boolean): dump all module paths and sort them by groups
---  options.flatten (boolean): dump all module paths and flatten them
---@return table
function M.group.syntax(options)
  return get_normal_group("syntax", options)
end

---Get modules in the {plugin_,config_}path/lua/colo/groups/integration path.
---@param options table<string, boolean> additional settings
---  options.resolve (boolean): require the module path
---  options.indexed (boolean): dump all module paths and sort them by groups
---  options.flatten (boolean): dump all module paths and flatten them
---@return table
function M.group.integration(options)
  return get_normal_group("integration", options)
end

---Get module in the {plugin_,config_}path/lua/colo/groups/override path.
---@param options table<string, boolean>? additional settings
---  options.resolve (boolean): require the module path
---@return table
function M.group.override(options)
  options = vim.F.if_nil(options, {})
  local current = M.theme.current()

  if options.resolve then
    local present, hl_chunk =
      pcall(require, string.format("colo.groups.override.%s_%s", current.name, current.background))
    return present and hl_chunk or {}
  end
  return {}
end

---Get module in the {plugin_,config_}path/lua/colo/groups/extra/terminal path.
---@param options table<string, boolean> additional settings
---  options.resolve (boolean): require the module path
function M.group.terminal(options)
  options = vim.F.if_nil(options, {})
  local mod_path = "colo.groups.extra.terminal"
  return options.resolve and require(mod_path) or { mod_path }
end

---Utils relating to aggregate styling and font styling.
M.aggregate = {}

---Categories of styles that are currently supported.
M.aggregate.categories = {
  "bold",
  "italic",
  "undercurl",
  "underline",
  "transparent",
  "all",
}

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
        results[hl_name] = theming.wrap(hl_name)
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
        if operation == "add" or operation == "+" then
          if category == "transparent" then
            hl_value.background = nil
          else
            hl_value[category] = true
          end
          theming.set(hl_name, hl_value)
        elseif operation == "remove" or operation == "rm" or operation == "-" then
          if category == "transparent" then
            hl_value.background = nil ---TODO: restore from groups/*
          else
            hl_value[category] = false
          end
          theming.set(hl_name, hl_value)
        else
          if category == "transparent" then
            hl_value.background = nil ---TODO: restore from groups/*
          else
            hl_value[category] = not hl_value[category]
          end
          theming.set(hl_name, hl_value)
        end
      end
    end
  end
end

---Add an aggregate.
---@param ... string[] one of the items from aggregate.categories.
function M.aggregate.add(...)
  M.aggregate.set("add", ...)
end

---Remove an aggregate.
---@param ... string[] one of the items from aggregate.categories.
function M.aggregate.remove(...)
  M.aggregate.set("remove", ...)
end

---Add/Remove an aggregate if it is already set.
---@param ... string[] one of the items from aggregate.categories.
function M.aggregate.toggle(...)
  M.aggregate.set("toggle", ...)
end

---Extension/plugin related utils.
M.extension = {}

---Scan for extensions in the {plugin,user}_path/lua/colo/extensions.
---@return table<string>
function M.extension.list()
  return util.plugin.scan("extensions", {
    silent = true,
    add_dirs = false,
    on_insert = function(path)
      return fn.fnamemodify(path, ":t:r")
    end,
  })
end

---Load an extension. This reloads all extensions as well.
---Noe that if pluging config has three keys then ... needs to three params as well.
---@param config table needs to return the following table:
---  {
---    module = "path.to.extension",
---    enable = true,
---    options = { some_options... },
---  }
---@param ... any extension(s)
function M.extension.load(config, ...)
  local extensions = M.extension.list()
  local options = vim.tbl_flatten({ ... })

  reload.reload_module("colo.extensions")
  for _, name in ipairs(options) do
    if vim.tbl_contains(extensions, name) and config[name] and config[name].enable then
      require(config[name].module)
    end
  end
end

---Reload and require all extensions.
function M.extension.reload_all()
  reload.reload_module("colo.extensions")
  local extensions = require("colo").config.extensions
  for _, extension in pairs(extensions) do
    if extension.enable then
      pcall(require, extension.module)
    end
  end
end

return M

---vim:filetype=lua
