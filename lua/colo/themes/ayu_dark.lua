---@module "colo.themes.ayu_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "dempfi",
  name = "ayu",
  description = "Modern theme for modern VIMs.",
  source = "https://github.com/ayu-theme",
  background = "dark",
  black = Color:new({ hex = "#0F1419" }),
  red = Color:new({ hex = "#F07178" }),
  green = Color:new({ hex = "#B8CC52" }),
  yellow = Color:new({ hex = "#FFB454" }),
  blue = Color:new({ hex = "#43B0E6" }),
  magenta = Color:new({ hex = "#C79BF4" }),
  cyan = Color:new({ hex = "#95E6CB" }),
  white = Color:new({ hex = "#E6E1CF" }),
  bright_black = Color:new({ hex = "#131721" }),
  bright_red = Color:new({ hex = "#FF8087" }),
  bright_green = Color:new({ hex = "#B9E75B" }),
  bright_yellow = Color:new({ hex = "#E6B673" }),
  bright_blue = Color:new({ hex = "#59C2FF" }),
  bright_magenta = Color:new({ hex = "#D2A6FF" }),
  bright_cyan = Color:new({ hex = "#74C5AA" }),
  bright_white = Color:new({ hex = "#F3F4F5" }),
}

-- vim:filetype=lua
