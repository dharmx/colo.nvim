local col = require("colo.api").theme.current()

return {
  FidgetTitle = { foreground = col.bright_green },
  FidgetTask = { foreground = col.black:lighten(5) },
}

---vim:filetype=lua
