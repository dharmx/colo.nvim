local M = {}

local util = require("colo.util")
local theme_util = require("colo.theme")
local colo_config = require("colo.config")
local reload = require("plenary.reload").reload_module

local F = vim.fn

M.theme = {}

function M.theme.get(theme_name) return require("colo.themes." .. theme_name) end

function M.theme.current() return M.theme.get(vim.g.colors_name) end

function M.theme.clean()
  vim.o.background = nil
  vim.g.colors_name = nil
  vim.cmd.highlight("clear")
  if F.exists("syntax_on") then vim.cmd.syntax("reset") end
end

function M.theme.set(theme_name, ns)
  local theme = M.theme.get(theme_name)
  vim.g.colors_name = theme_name
  local term, hl_list, override = M.theme.all(theme)
  theme_util.set_term(term)

  for _, hl in ipairs(hl_list) do
    for hl_name, hl_value in pairs(hl) do
      theme_util.set_hl(hl_name, hl_value, ns)
    end
  end

  for hl_name, hl_value in pairs(override) do
    theme_util.set_hl(hl_name, hl_value, ns)
  end

  if colo_config.current.extra_highlights.enable then
    for hlname, hlvalue in pairs(colo_config.current.extra_highlights.items) do
      theme_util.set_hl(hlname, hlvalue)
    end
  end

  if not colo_config.current.skip_extension_load and colo_config.current.reload.enable then
    M.theme.reload(colo_config.current.reload.items)
  end
  colo_config.current.skip_extension_load = false
end

function M.theme.reload(mods)
  for _, mod in ipairs(mods) do
    if type(mod) == "string" then
      reload(mod)
    elseif type(mod) == "table" then
      if mod.import then
        reload(mod[1])
        require(mod[1])
      end
      if mod.silent then
        reload(mod[1])
        pcall(require, mod[1])
      end
    end
  end
end

function M.theme.invert()
  local hl_list = F.getcompletion("", "highlight")
  for _, hl_name in ipairs(hl_list) do
    local hl = theme_util.wrap(hl_name)
    if hl.foreground then hl.foreground = hl.foreground:invert() end
    if hl.background then hl.background = hl.background:invert() end
    if hl.special then hl.special = hl.special:invert() end
    theme_util.set_hl(hl_name, hl)
  end
end

function M.theme.all(colors)
  local term_hl_globals = M.group.terminal(colors)
  local hl_list = {
    M.group.base(colors),
    M.group.integration(colors),
    M.group.syntax(colors),
  }
  local override_hl_list = M.group.override(colors)
  return term_hl_globals, hl_list, override_hl_list
end

local function exclude_match(pat)
  for _, ex in ipairs(colo_config.current.exclude) do
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

M.group = {}

local function to_module_path(path)
  return F.fnamemodify(path, string.format(":s?%s??:r", util.plugin.path() .. "/lua")):gsub("/", "."):sub(2)
end

local function get_normal_group(group_name, colors)
  local exclude = {}
  if colo_config.current.blacklists.enable then exclude = colo_config.current.blacklists.items end
  local base_hl = util.plugin.scan("groups/" .. group_name, {
    add_dirs = false,
    on_insert = to_module_path,
    depth = 1,
  })

  for index, hl_file in ipairs(base_hl) do
    if not vim.tbl_contains(exclude, hl_file) then
      base_hl[index] = require(hl_file).prime(colors)
    else
      base_hl[index] = nil
    end
  end

  local results = {}
  for _, hl_chunk in pairs(base_hl) do
    for hl_name, hl_value in pairs(hl_chunk) do
      results[hl_name] = hl_value
    end
  end
  return results
end

function M.group.base(colors) return get_normal_group("base", colors) end

function M.group.syntax(colors) return get_normal_group("syntax", colors) end

function M.group.integration(colors) return get_normal_group("integration", colors) end

function M.group.override(colors)
  local exclude = {}
  if colo_config.current.blacklists.enable then
    exclude = colo_config.current.blacklists.items
  end
  local mod = string.format("colo.groups.override.%s_%s", colors.name, colors.background)
  if not vim.tbl_contains(exclude, mod) then
    local present, hl_chunk = pcall(require, mod)
    return present and hl_chunk.prime(colors) or {}
  end
  return {}
end

function M.group.terminal(colors)
  local exclude = {}
  if colo_config.current.blacklists.enable then
    exclude = colo_config.current.blacklists.items
  end
  if not vim.tbl_contains(exclude, "colo.groups.extra.terminal") then
    return require("colo.groups.extra.terminal").prime(colors)
  end
  return {}
end

M.aggregate = {}

---@private
M.aggregate.items = { "bold", "italic", "undercurl", "underline", "transparent" }

function M.aggregate.get(...)
  local attrs = { ... }
  if #attrs == 0 then attrs = M.aggregate.items end
  local hl_names = require("colo.groups.extra.aggregate")
  local trimmed = {}
  for _, attr in ipairs(attrs) do
    trimmed[attr] = {}
    for _, hl_name in ipairs(hl_names[attr]) do
      trimmed[attr][hl_name] = theme_util.wrap(hl_name)
    end
  end
  return trimmed
end

local function setup_aggregate()
  local backup = M.aggregate.get()
  colo_config._PRIVATE.aggregate = vim.F.if_nil(colo_config._PRIVATE.aggregate, { backup = backup, active = {} })
end

local function bulk_set(hl_list, mod, state)
  for hl_name, hl_value in pairs(hl_list) do
    if mod == "transparent" then
      if state then
        hl_value.background = nil
      else
        hl_value.background = colo_config._PRIVATE.aggregate.backup.transparent[hl_name].background
      end
      theme_util.set_hl(hl_name, hl_value)
    else
      hl_value[mod] = state
      theme_util.set_hl(hl_name, hl_value)
    end
  end
end

function M.aggregate.append(...)
  setup_aggregate()
  local items = M.aggregate.get(...)
  local attrs = { ... }
  for _, attr in ipairs(attrs) do
    if not vim.tbl_contains(colo_config._PRIVATE.aggregate.active, attr) then
      bulk_set(items[attr], attr, true)
      table.insert(colo_config._PRIVATE.aggregate.active, attr)
    end
  end
end

function M.aggregate.remove(...)
  setup_aggregate()
  local hl_with_attrs = M.aggregate.get(...)
  local attrs = { ... }
  for index, attr in ipairs(attrs) do
    if vim.tbl_contains(colo_config._PRIVATE.aggregate.active, attr) then
      bulk_set(hl_with_attrs[attr], attr, false)
      table.remove(colo_config._PRIVATE.aggregate.active, index)
    end
  end
end

function M.aggregate.toggle(...)
  setup_aggregate()
  local attrs = { ... }
  if #attrs == 0 then attrs = M.aggregate.items end
  for _, attr in ipairs(attrs) do
    if vim.tbl_contains(colo_config._PRIVATE.aggregate.active, attr) then
      M.aggregate.remove(attr)
    else
      M.aggregate.append(attr)
    end
  end
end

function M.aggregate.rm() colo_config._PRIVATE.aggregate = nil end

M.cycle = {}

local function setup_cycle()
  local themes = M.theme.list()
  colo_config._PRIVATE.cycle = vim.F.if_nil(colo_config._PRIVATE.cycle, { themes = themes, total = #themes, position = 1 })
end

function M.cycle.next()
  setup_cycle()
  local next_pos = (colo_config._PRIVATE.cycle.position % colo_config._PRIVATE.cycle.total) + 1
  M.theme.set(colo_config._PRIVATE.cycle.themes[next_pos])
  colo_config._PRIVATE.cycle.position = next_pos
end

function M.cycle.prev()
  setup_cycle()
  local prev_pos = colo_config._PRIVATE.cycle.position - 1
  if prev_pos <= 0 then prev_pos = colo_config._PRIVATE.cycle.total end
  M.theme.set(colo_config._PRIVATE.cycle.themes[prev_pos])
  colo_config._PRIVATE.cycle.position = prev_pos
end

function M.cycle.rand()
  setup_cycle()
  local rand_pos = math.random(1, colo_config._PRIVATE.cycle.total)
  M.theme.set(colo_config._PRIVATE.cycle.themes[rand_pos])
  colo_config._PRIVATE.cycle.position = rand_pos
end

function M.cycle.rm() colo_config._PRIVATE.cycle = nil end

return M

-- vim:filetype=lua
