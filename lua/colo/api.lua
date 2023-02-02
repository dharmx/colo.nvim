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
  local base_hl = util.plugin.scan("groups/" .. n, {
    add_dirs = false,
    on_insert = to_module_path,
    depth = 1,
  })

  for i, hl_file in ipairs(base_hl) do
    base_hl[i] = require(hl_file).prime(c)
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
  local present, hl_chunk = pcall(require, string.format("colo.groups.override.%s_%s", c.name, c.background))
  return present and hl_chunk.prime(c) or {}
end

function M.group.terminal(c) return require("colo.groups.extra.terminal").prime(c) end

M.aggregate = {}

M.aggregate.categories = { "bold", "italic", "undercurl", "underline", "transparent", "all" }

function M.aggregate.get(...)
  local opts = vim.tbl_flatten({ ... })
  local items = require("colo.groups.extra.aggregate")

  if vim.tbl_contains(opts, "all") then
    opts = vim.list_slice(M.aggregate.categories, 1, #M.aggregate.categories - 1)
  end

  local results = {}
  for _, category in ipairs(opts) do
    if vim.tbl_contains(M.aggregate.categories, category) then
      for _, hl_name in ipairs(items[category]) do
        results[hl_name] = tutil.wrap(hl_name)
      end
    end
  end
  return results
end

function M.aggregate.set(operation, ...)
  local opts = vim.tbl_flatten({ ... })
  if vim.tbl_contains(opts, "all") then
    opts = vim.list_slice(M.aggregate.categories, 1, #M.aggregate.categories - 1)
  end

  for _, category in ipairs(opts) do
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

function M.aggregate.add(...) M.aggregate.set("add", ...) end

function M.aggregate.remove(...) M.aggregate.set("remove", ...) end

function M.aggregate.toggle(...) M.aggregate.set("toggle", ...) end

return M

-- vim:filetype=lua
