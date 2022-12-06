hl.clear("IndentBlanklineSpaceChar")
hl.clear("IndentBlanklineSpaceCharBlankline")
hl.foreground("IndentBlanklineChar", col.bright_black:brighten(4))
hl.foreground("IndentBlanklineContextChar", col.blue)
hl.background("IndentBlanklineContextStart", col.black:lighten(1.5):brighten(1))

---vim:filetype=lua
