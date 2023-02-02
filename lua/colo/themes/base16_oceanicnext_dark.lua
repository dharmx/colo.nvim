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
  black = Color:new({ hex = "#1B2B34" }),
  red = Color:new({ hex = "#EC5f67" }),
  green = Color:new({ hex = "#99C794" }),
  yellow = Color:new({ hex = "#FAC863" }),
  blue = Color:new({ hex = "#6699CC" }),
  magenta = Color:new({ hex = "#C594C5" }),
  cyan = Color:new({ hex = "#5FB3B3" }),
  white = Color:new({ hex = "#C0C5CE" }),
  bright_black = Color:new({ hex = "#65737E" }),
  bright_red = Color:new({ hex = "#EC5f67" }),
  bright_green = Color:new({ hex = "#99C794" }),
  bright_yellow = Color:new({ hex = "#FAC863" }),
  bright_blue = Color:new({ hex = "#6699CC" }),
  bright_magenta = Color:new({ hex = "#C594C5" }),
  bright_cyan = Color:new({ hex = "#5FB3B3" }),
  bright_white = Color:new({ hex = "#D8DEE9" }),
}

-- vim:filetype=lua
