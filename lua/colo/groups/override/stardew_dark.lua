---@module "colo.groups.override.stardew_dark"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    Keyword = { foreground = col.magenta },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.return"] = { link = "Keyword" },
    ["@function.builtin"] = { foreground = col.cyan },
    ["Function"] = { foreground = col.blue },
    ["Number"] = { foreground = col.red },
    ["@field"] = { foreground = col.white:darken(10) },
    ["@conditional"] = { foreground = col.yellow },
  }
end

return M

---vim:filetype=lua
