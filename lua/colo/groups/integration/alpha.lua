local col = require("colo.api").theme.current()

return {
  AlphaKeyPrefix = { background = col.blue, foreground = col.black },
  AlphaFooting = { foreground = col.magenta },
  AlphaHeading = { foreground = col.bright_black:lighten(1) },
  AlphaLoaded = { foreground = col.bright_black:brighten(4):lighten(1) },
  AlphaScroll = { foreground = col.magenta },
  AlphaButtonLabelText = { foreground = col.yellow },
}

---vim:filetype=lua
