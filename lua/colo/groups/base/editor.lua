hl.link("CursorColumn", "CursorLine")
hl.short_set("Normal", col.black, col.white)
hl.short_set("NormalFloat", col.black:brighten(2):darken(1), col.white:darken(10))
hl.short_set("FloatBorder", col.black:brighten(2):darken(1), col.white:darken(15))
hl.short_set("Cursor", col.green:lighten(3), col.black)
hl.short_set("ColorColumn", col.black, col.black:brighten(0.5):lighten(2))
hl.background("Visual", col.black:brighten(1):lighten(3))
hl.background("CursorLine", col.black:brighten(1):lighten(2):desaturate(4))
hl.foreground("Error", col.red:darken(3))
hl.foreground("CursorLineNr", col.yellow, { deco.B })
hl.foreground("LineNr", col.black:lighten(15))

---vim:filetype=lua
