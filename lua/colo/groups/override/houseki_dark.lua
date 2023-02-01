---@module "colo.groups.override.houseki_dark"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  Keyword = { foreground = col.magenta },
  ["@keyword.function"] = { link = "Keyword" },
  ["@keyword"] = { link = "Keyword" },
  ["@keyword.return"] = { link = "Keyword" },
  ["@function.builtin"] = { foreground = col.cyan },
  ["@punctuation.bracket"] = { foreground = col.bright_yellow },
  ["@punctuation.delimiter"] = { foreground = col.bright_yellow },
  ["Function"] = { foreground = col.blue },
  ["Number"] = { foreground = col.bright_red },
  ["@field"] = { foreground = col.white:darken(10) },
  ["@conditional"] = { foreground = col.yellow },
}

---vim:filetype=lua
