local col = require("colo.api").theme.current()

return {
  NUIHeading = { background = col.black:brighten(1):lighten(2):darken(1), foreground = col.red },
  NUIText = { background = col.black:brighten(1):lighten(2):darken(1), foreground = col.white:darken(10) },
  NUILine = { background = col.black:brighten(1):lighten(2):darken(1), foreground = col.bright_black:brighten(4) },
  NUINormal = {
    background = col.black:brighten(1):lighten(2):darken(1),
    foreground = col.black:brighten(1):lighten(2):darken(1),
  },
  NUIPrompt = { background = col.black:brighten(1):lighten(2):darken(1), foreground = col.blue },
}

---vim:filetype=lua
