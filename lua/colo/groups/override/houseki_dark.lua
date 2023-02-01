---@module "colo.groups.override.houseki_dark"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    Keyword = { foreground = c.magenta },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.return"] = { link = "Keyword" },
    ["@function.builtin"] = { foreground = c.cyan },
    ["@punctuation.bracket"] = { foreground = c.bright_yellow },
    ["@punctuation.delimiter"] = { foreground = c.bright_yellow },
    ["Function"] = { foreground = c.blue },
    ["Number"] = { foreground = c.bright_red },
    ["@field"] = { foreground = c.white:darken(10) },
    ["@conditional"] = { foreground = c.yellow },
  }
end

return M

---vim:filetype=lua
