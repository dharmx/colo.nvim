---@module "colo.hl"
---@author dharmx
---@license GPL-3.0

local M = {}

---@module "plenary.scandir"
local dir = require("plenary.scandir")
---@module "plenary.tbl"
local tbl = require("plenary.tbl")

---Highlight function that converts Color value into hex
---@param name string highlight group
---@param val table that will contain the highlight values
---@see nvim_set_hl
---@see Color
function M.highlight(name, val)
  val = val or {}
  if val.fg then
    val.fg = val.fg:hex(true)
  end
  if val.bg then
    val.bg = val.bg:hex(true)
  end
  if val.sp then
    val.sp = val.sp:hex(true)
  end
  vim.api.nvim_set_hl(0, name, val)
end

---Set a neovim theme
---@param theme string name of the theme
function M.set_theme(theme)
  local plugin_path = dir.scan_dir(vim.fn.stdpath("data") .. "/site", {
    hidden = false,
    add_dirs = true,
    search_pattern = "nvim%-colo$",
  })[1] .. "/lua/colo/groups"

  local scanned_paths = dir.scan_dir(plugin_path, {
    hidden = false,
    add_dirs = false,
  })

  for _, path in ipairs(scanned_paths) do
    local path_spl = vim.split(vim.fn.fnamemodify(path, ":r"), "/")
    local module_path = table.concat(tbl.pack(tbl.unpack(path_spl, #path_spl - 3, #path_spl)), ".")
    local hl_list = require(module_path)

    for name, val in pairs(hl_list) do
      M.highlight(name, val)
    end
  end
end

return M
