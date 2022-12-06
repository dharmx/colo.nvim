---@module "colo.colors.ayu_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "dempfi",
  name = "ayu",
  description = "Modern theme for modern VIMs.",
  source = "https://github.com/ayu-theme",
  background = "dark",
  black = Color:new({ hexcode = "#0F1419" }),
  red = Color:new({ hexcode = "#F07178" }),
  green = Color:new({ hexcode = "#B8CC52" }),
  yellow = Color:new({ hexcode = "#FFB454" }),
  blue = Color:new({ hexcode = "#43B0E6" }),
  magenta = Color:new({ hexcode = "#C79BF4" }),
  cyan = Color:new({ hexcode = "#95E6CB" }),
  white = Color:new({ hexcode = "#E6E1CF" }),
  bright_black = Color:new({ hexcode = "#131721" }),
  bright_red = Color:new({ hexcode = "#FF8087" }),
  bright_green = Color:new({ hexcode = "#B9E75B" }),
  bright_yellow = Color:new({ hexcode = "#E6B673" }),
  bright_blue = Color:new({ hexcode = "#59C2FF" }),
  bright_magenta = Color:new({ hexcode = "#D2A6FF" }),
  bright_cyan = Color:new({ hexcode = "#74C5AA" }),
  bright_white = Color:new({ hexcode = "#F3F4F5" }),
}

---vim:filetype=lua
