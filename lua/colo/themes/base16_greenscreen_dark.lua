---@module "colo.themes.base16_greenscreen_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_greenscreen",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-greenscreen.json",
  background = "dark",
  black = Color:new({ hex = "#001100" }),
  red = Color:new({ hex = "#007700" }),
  green = Color:new({ hex = "#00bb00" }),
  yellow = Color:new({ hex = "#007700" }),
  blue = Color:new({ hex = "#009900" }),
  magenta = Color:new({ hex = "#00bb00" }),
  cyan = Color:new({ hex = "#005500" }),
  white = Color:new({ hex = "#00bb00" }),
  bright_black = Color:new({ hex = "#007700" }),
  bright_red = Color:new({ hex = "#007700" }),
  bright_green = Color:new({ hex = "#00bb00" }),
  bright_yellow = Color:new({ hex = "#007700" }),
  bright_blue = Color:new({ hex = "#009900" }),
  bright_magenta = Color:new({ hex = "#00bb00" }),
  bright_cyan = Color:new({ hex = "#005500" }),
  bright_white = Color:new({ hex = "#00ff00" }),
}

---vim:filetype=lua
