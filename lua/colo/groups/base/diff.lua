local col = require("colo.api").theme.current()

return {
  DiffAdd = { foreground = col.green, reverse = true },
  DiffChange = { foreground = col.magenta, reverse = true },
  DiffDelete = { foreground = col.red, reverse = true },
  DiffText = { foreground = col.blue, reverse = true },
}

---vim:filetype=lua
