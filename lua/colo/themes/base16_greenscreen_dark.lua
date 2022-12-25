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
  black = Color:new({ hexcode = "#001100" }),
  red = Color:new({ hexcode = "#007700" }),
  green = Color:new({ hexcode = "#00bb00" }),
  yellow = Color:new({ hexcode = "#007700" }),
  blue = Color:new({ hexcode = "#009900" }),
  magenta = Color:new({ hexcode = "#00bb00" }),
  cyan = Color:new({ hexcode = "#005500" }),
  white = Color:new({ hexcode = "#00bb00" }),
  bright_black = Color:new({ hexcode = "#007700" }),
  bright_red = Color:new({ hexcode = "#007700" }),
  bright_green = Color:new({ hexcode = "#00bb00" }),
  bright_yellow = Color:new({ hexcode = "#007700" }),
  bright_blue = Color:new({ hexcode = "#009900" }),
  bright_magenta = Color:new({ hexcode = "#00bb00" }),
  bright_cyan = Color:new({ hexcode = "#005500" }),
  bright_white = Color:new({ hexcode = "#00ff00" }),
}

---vim:filetype=lua
