local M = {}

---@module "plenary.scandir"
local scan = require("plenary.scandir")

---@module "colo.theming"
local theming = require("colo.theming")
---@module "colo.util"
local util = require("colo.util")

local function collapse_group(plugin_path, group, col)
  local modules = {}
  for _, mod_path in ipairs(util.scan_plugin_dir(plugin_path, "/lua/colo/groups/" .. group, 3)) do
    for name, value in pairs(require(mod_path).get(col, theming.decorations)) do
      modules[name] = value
    end
  end
  return modules
end

function M.load_hl_priority(theme)
  local path = util.plugin_path()
  local col = require("colo.themes." .. theme)
  local modules = {
    collapse_group(path, "base", col),
    collapse_group(path, "syntax", col),
    collapse_group(path, "integration", col),
    require("colo.groups.extra.aggregate"),
    require("colo.groups.extra.terminal").get(col, theming.decorations),
  }
  local present, override = pcall(require, "colo.groups.override." .. theme)
  if present then
    table.insert(modules, override.get(col, deco))
  end
  return modules
end

function M.apply_aggregate(groups, attribute)
  if
    not vim.tbl_contains({
      theming.decorations.B,
      theming.decorations.I,
      theming.decorations.UCL,
      theming.decorations.ULN,
      "transparent",
    }, attribute)
  then
    vim.api.nvim_err_writeln("Only bold, italic, underline, undercurl and transparent are allowed.")
    return
  end
  if attribute ~= "transparent" then
    for _, group in ipairs(groups) do
      theming.style(group, { attribute })
    end
  else
    for _, group in ipairs(groups) do
      theming.clear(group)
    end
  end
end

function M.apply_all_hl(theme, aggregates)
  local all_hl = M.load_hl_priority(theme)
  local defaults = vim.list_slice(all_hl, 1, 3)
  for _, chunk in ipairs(defaults) do
    for name, value in pairs(chunk) do
      theming.set(name, value)
    end
  end
  for index, color in ipairs(all_hl[5]) do
    theming.terminal(index, color)
  end
  for _, aggregate in ipairs(aggregates or {}) do
    M.apply_aggregate(all_hl[4][aggregate], aggregate)
  end
  if all_hl[6] then
    for name, value in pairs(all_hl[6]) do
      theming.set(name, value)
    end
  end
end

return M

---vim:filetype=lua
