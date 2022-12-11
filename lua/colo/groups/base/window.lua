local col = require("colo.api").theme.current()

return {
  VertSplit = { foreground = col.bright_black },
  WinSeparator = { link = "VertSplit" },
  Title = { foreground = col.black:brighten(4):lighten(20) },
  MsgSeparator = { foreground = col.magenta },
}

---vim:filetype=lua
