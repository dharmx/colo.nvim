local col = require("colo.api").theme.current()

return {
  WhichKeyGroup = { foreground = col.red },
  WhichKeyDesc = { foreground = col.yellow },
  WhichKeySeparator = { foreground = col.blue },
  WhichKeyValue = { foreground = col.white:darken(25) },
  WhichKey = { foreground = col.magenta },
  WhichKeyFloat = { background = col.black:darken(1) },
  WhichKeyBorder = { background = col.black:darken(1) },
}

---vim:filetype=lua
