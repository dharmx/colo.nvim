---@module "colo.groups.integration.bookmarks"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    BookmarkAnnotationLine = { foreground = col.magenta:brighten(10) },
    BookmarkAnnotationSign = { foreground = col.magenta },
    BookmarkLine = { background = col.bright_black:brighten(10) },
    BookmarkSign = { foreground = col.red },
  }
end

return M

---vim:filetype=lua
