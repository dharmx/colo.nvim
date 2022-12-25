---@module "colo.themes.base16_oceanicnext_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_oceanicnext",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-oceanicnext.json",
  background = "dark",
  black = Color:new({ hexcode = "#1B2B34" }),
  red = Color:new({ hexcode = "#EC5f67" }),
  green = Color:new({ hexcode = "#99C794" }),
  yellow = Color:new({ hexcode = "#FAC863" }),
  blue = Color:new({ hexcode = "#6699CC" }),
  magenta = Color:new({ hexcode = "#C594C5" }),
  cyan = Color:new({ hexcode = "#5FB3B3" }),
  white = Color:new({ hexcode = "#C0C5CE" }),
  bright_black = Color:new({ hexcode = "#65737E" }),
  bright_red = Color:new({ hexcode = "#EC5f67" }),
  bright_green = Color:new({ hexcode = "#99C794" }),
  bright_yellow = Color:new({ hexcode = "#FAC863" }),
  bright_blue = Color:new({ hexcode = "#6699CC" }),
  bright_magenta = Color:new({ hexcode = "#C594C5" }),
  bright_cyan = Color:new({ hexcode = "#5FB3B3" }),
  bright_white = Color:new({ hexcode = "#D8DEE9" }),
}

---vim:filetype=lua
