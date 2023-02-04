local M = {}

local util = require("colo.util")
local tutil = require("colo.theme")
local conf = require("colo.config")
local rel = require("plenary.reload").reload_module

local F = vim.fn

M.theme = {}

function M.theme.get(n) return require("colo.themes." .. n) end

function M.theme.current() return M.theme.get(vim.g.colors_name) end

function M.theme.clean()
  vim.o.background = nil
  vim.g.colors_name = nil
  vim.cmd.highlight("clear")
  if F.exists("syntax_on") then vim.cmd.syntax("reset") end
end

function M.theme.set(n, ns)
  local theme = M.theme.get(n)
  vim.g.colors_name = n
  local term, hls, o = M.theme.all(theme)
  tutil.set_term(term)

  for _, hl in ipairs(hls) do
    for k, v in pairs(hl) do
      tutil.set_hl(k, v, ns)
    end
  end

  for k, v in pairs(o) do
    tutil.set_hl(k, v, ns)
  end

  if conf.current.custom_hl.enable then
    local tutil = require("colo.theme")
    for n, v in pairs(conf.current.custom_hl.items) do
      tutil.set_hl(n, v)
    end
  end

  if not conf.current.skip_extension_load and conf.current.reload.enable then
    M.theme.reload(conf.current.reload.items)
  end
  conf.current.skip_extension_load = false
end

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

function M.theme.all(c)
  local term_chunk = M.group.terminal(c)
  local hls = {
    M.group.base(c),
    M.group.integration(c),
    M.group.syntax(c),
  }
  local o = M.group.override(c)
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

local function get_normal_group(n, c)
  local ex = {}
  if conf.current.blacklists.enable then ex = conf.current.blacklists.items end
  local base_hl = util.plugin.scan("groups/" .. n, {
    add_dirs = false,
    on_insert = to_module_path,
    depth = 1,
  })

  for i, hl_file in ipairs(base_hl) do
    if not vim.tbl_contains(ex, hl_file) then
      base_hl[i] = require(hl_file).prime(c)
    else
      base_hl[i] = nil
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

function M.group.base(c) return get_normal_group("base", c) end

function M.group.syntax(c) return get_normal_group("syntax", c) end

function M.group.integration(c) return get_normal_group("integration", c) end

function M.group.override(c)
  local ex = {}
  if conf.current.blacklists.enable then
    ex = conf.current.blacklists.items
  end
  local mod = string.format("colo.groups.override.%s_%s", c.name, c.background)
  if not vim.tbl_contains(ex, mod) then
    local present, hl_chunk = pcall(require, mod)
    return present and hl_chunk.prime(c) or {}
  end
  return {}
end

function M.group.terminal(c)
  local ex = {}
  if conf.current.blacklists.enable then
    ex = conf.current.blacklists.items
  end
  if not vim.tbl_contains(ex, "colo.groups.extra.terminal") then
    return require("colo.groups.extra.terminal").prime(c)
  end
  return {}
end

M.aggregate = {}

---@private
M.aggregate.items = { "bold", "italic", "undercurl", "underline", "transparent" }

function M.aggregate.get(...)
  local p = { ... }
  if #p == 0 then p = M.aggregate.items end
  local items = require("colo.groups.extra.aggregate")
  local trimmed = {}
  for _, v in ipairs(p) do
    trimmed[v] = {}
    for _, n in ipairs(items[v]) do
      trimmed[v][n] = tutil.wrap(n)
    end
  end
  return trimmed
end

local function setup_aggregate()
  local backup = M.aggregate.get()
  conf._PRIVATE.aggregate = vim.F.if_nil(conf._PRIVATE.aggregate, { backup = backup, active = {} })
end

local function bulk_set(hls, mod, state)
  for n, v in pairs(hls) do
    if mod == "transparent" then
      if state then
        v.background = nil
      else
        v.background = conf._PRIVATE.aggregate.backup.transparent[n].background
      end
      tutil.set_hl(n, v)
    else
      v[mod] = state
      tutil.set_hl(n, v)
    end
  end
end

function M.aggregate.append(...)
  setup_aggregate()
  local items = M.aggregate.get(...)
  local p = { ... }
  for _, v in ipairs(p) do
    if not vim.tbl_contains(conf._PRIVATE.aggregate.active, v) then
      bulk_set(items[v], v, true)
      table.insert(conf._PRIVATE.aggregate.active, v)
    end
  end
end

function M.aggregate.remove(...)
  setup_aggregate()
  local items = M.aggregate.get(...)
  local p = { ... }
  for i, v in ipairs(p) do
    if vim.tbl_contains(conf._PRIVATE.aggregate.active, v) then
      bulk_set(items[v], v, false)
      table.remove(conf._PRIVATE.aggregate.active, i)
    end
  end
end

function M.aggregate.toggle(...)
  setup_aggregate()
  local p = { ... }
  if #p == 0 then p = M.aggregate.items end
  for _, v in ipairs(p) do
    if vim.tbl_contains(conf._PRIVATE.aggregate.active, v) then
      M.aggregate.remove(v)
    else
      M.aggregate.append(v)
    end
  end
end

function M.aggregate.rm() conf._PRIVATE.aggregate = nil end

M.cycle = {}

local function setup_cycle()
  local themes = M.theme.list()
  conf._PRIVATE.cycle = vim.F.if_nil(conf._PRIVATE.cycle, { themes = themes, total = #themes, position = 1 })
end

function M.cycle.next()
  setup_cycle()
  local next_pos = (conf._PRIVATE.cycle.position % conf._PRIVATE.cycle.total) + 1
  M.theme.set(conf._PRIVATE.cycle.themes[next_pos])
  conf._PRIVATE.cycle.position = next_pos
end

function M.cycle.prev()
  setup_cycle()
  local prev_pos = conf._PRIVATE.cycle.position - 1
  if prev_pos <= 0 then prev_pos = conf._PRIVATE.cycle.total end
  M.theme.set(conf._PRIVATE.cycle.themes[prev_pos])
  conf._PRIVATE.cycle.position = prev_pos
end

function M.cycle.rand()
  setup_cycle()
  local rand_pos = math.random(1, conf._PRIVATE.cycle.total)
  M.theme.set(conf._PRIVATE.cycle.themes[rand_pos])
  conf._PRIVATE.cycle.position = rand_pos
end

function M.cycle.rm() conf._PRIVATE.cycle = nil end

return M

-- vim:filetype=lua
