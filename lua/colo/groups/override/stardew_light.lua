---@module "colo.groups.override.stardew_light"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

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

---vim:filetype=lua
