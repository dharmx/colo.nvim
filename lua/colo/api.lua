local M = {}

---@module "colo.util"
local util = require("colo.util")
---@module "colo.theming"
local theming = require("colo.theming")

local reload = require("plenary.reload").reload_module

M.theme = {}

function M.theme.get(name)
  return require("colo.themes." .. name)
end

function M.theme.current()
  return M.theme.get(vim.g.colors_name)
end

function M.theme.clean()
  vim.o.background = nil
  vim.g.colors_name = nil
  vim.cmd.highlight("clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd.syntax("reset")
  end
end

---@todo revise
function M.theme.set(name)
  assert(
    vim.tbl_contains(
      M.theme.list({
        tail = true,
        all = true,
      }),
      name
    ),
    "theme '" .. name .. "' does not exist!"
  )

  vim.o.background = M.theme.get(name).background
  vim.g.colors_name = name
  reload("colo.groups")

  local terminal, hl_chunks, overrides = M.theme.all_hl_list()
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
end

function M.theme.all_hl_list()
  local term_chunk = M.group.terminal({ resolve = true })
  local hl_chunks = {
    M.group.base({ resolve = true, flatten = true }),
    M.group.integration({ resolve = true, flatten = true }),
    M.group.syntax({ resolve = true, flatten = true }),
  }
  local overrides = M.group.override({ resolve = true })
  return term_chunk, hl_chunks, overrides
end

function M.theme.list(options)
  options = vim.F.if_nil(options, {})
  local scan_options = {
    silent = true,
    add_dirs = false,
    on_insert = function(path)
      return vim.fn.fnamemodify(path, ":t:r")
    end,
  }

  local results = {}
  if options.all then
    table.insert(results, util.plugin.scan("themes", scan_options))
    scan_options.user = true
    table.insert(results, util.plugin.scan("themes", scan_options))
  elseif options.user then
    scan_options.user = true
    return util.plugin.scan("themes", scan_options)
  end
  return vim.tbl_flatten(results)
end

M.cycle = {}

local function cycle_init()
  if not _G.colo_private.cycle then
    return
  end

  local theme = M.theme.current()
  theme = theme.name .. "_" .. theme.background
  _G.colo_private.cycle = nil
  _G.colo_private.cycle_history = M.theme.list({ all = true })
  _G.colo_private.cycle_total = #_G.colo_private.cycle_history

  for index, value in ipairs(_G.colo_private.cycle_history) do
    if value == theme then
      _G.colo_private.cycle_position = index
    end
  end
end

function M.cycle.next()
  cycle_init()
  _G.colo_private.cycle_position = (_G.colo_private.cycle_position % _G.colo_private.cycle_total) + 1
  M.theme.set(_G.colo_private.cycle_history[_G.colo_private.cycle_position])
end

function M.cycle.previous()
  cycle_init()
  if _G.colo_private.cycle_position <= 1 then
    _G.colo_private.cycle_position = _G.colo_private.cycle_total
  else
    _G.colo_private.cycle_position = _G.colo_private.cycle_position - 1
  end
  M.theme.set(_G.colo_private.cycle_history[_G.colo_private.cycle_position])
end

function M.cycle.random()
  cycle_init()
  _G.colo_private.cycle_position = math.random(1, _G.colo_private.cycle_total)
  M.theme.set(_G.colo_private.cycle_history[_G.colo_private.cycle_position])
end

M.group = {}

local function get_normal_group(preset, options)
  options = options or {}
  assert(
    vim.tbl_contains({
      "base",
      "syntax",
      "integration",
    }, preset),
    "choose from base/integration/syntax"
  )
  local base_hl = util.plugin.scan("groups/" .. preset, {
    add_dirs = false,
    on_insert = util.plugin.to_module_path,
  })

  if options.resolve then
    if options.indexed then
      for index, hl_path in ipairs(base_hl) do
        base_hl[index] = require(hl_path)
      end
    else
      for index, hl_path in ipairs(base_hl) do
        base_hl[index] = nil
        local split_hl = vim.split(hl_path, "%.")
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

function M.group.base(options)
  return get_normal_group("base", options)
end

function M.group.syntax(options)
  return get_normal_group("syntax", options)
end

function M.group.integration(options)
  return get_normal_group("integration", options)
end

function M.group.override(options)
  options = options or {}
  local current = M.theme.current()
  current = ("colo.groups.override.%s_%s"):format(current.name, current.background)

  if options.resolve then
    local present, hl_chunk = pcall(require, current)
    return present and hl_chunk or {}
  end
  return { current }
end

function M.group.terminal(options)
  options = options or {}
  local mod_path = "colo.groups.extra.terminal"
  return options.resolve and require(mod_path) or { mod_path }
end

M.aggregate = {}

M.aggregate.categories = {
  "bold",
  "italic",
  "undercurl",
  "underline",
  "transparent",
  "all",
}

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

function M.aggregate.add(...)
  M.aggregate.set("add", ...)
end

function M.aggregate.remove(...)
  M.aggregate.set("remove", ...)
end

function M.aggregate.toggle(...)
  M.aggregate.set("toggle", ...)
end

M.extension = {}

function M.extension.list()
  return util.plugin.scan("extensions", {
    silent = true,
    add_dirs = false,
    on_insert = function(path)
      return vim.fn.fnamemodify(path, ":t:r")
    end,
  })
end

function M.extension.load(plugin_config, ...)
  ---@module "colo.init"
  local extensions = M.extension.list()
  local options = vim.tbl_flatten({ ... })

  for _, name in ipairs(options) do
    if vim.tbl_contains(extensions, name) and plugin_config[name] and plugin_config[name].enable then
      reload(plugin_config[name].module)
      require(plugin_config[name].module)
    end
  end
end

return M

---vim:filetype=lua
