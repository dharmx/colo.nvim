local M = {}

function M.prime(c)
  return {
    BookmarkAnnotationLine = { foreground = c.magenta:brighten(10) },
    BookmarkAnnotationSign = { foreground = c.magenta },
    BookmarkLine = { background = c.bright_black:brighten(10) },
    BookmarkSign = { foreground = c.red },
  }
end

return M
