---@module "colo.groups.integration.bookmarks"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  BookmarkAnnotationLine = { foreground = col.magenta:brighten(10) },
  BookmarkAnnotationSign = { foreground = col.magenta },
  BookmarkLine = { background = col.bright_black:brighten(10) },
  BookmarkSign = { foreground = col.red },
}

---vim:filetype=lua
