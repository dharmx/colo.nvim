---@module "colo.themes.nord_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "svengreb",
  name = "nord",
  description = "An arctic, north-bluish color palette.",
  source = "https://www.nordtheme.com",
  background = "dark",
  black = Color:new({ hexcode = "#2E3440" }),
  red = Color:new({ hexcode = "#BF616A" }),
  green = Color:new({ hexcode = "#A3BE8C" }),
  yellow = Color:new({ hexcode = "#EBCB8B" }),
  blue = Color:new({ hexcode = "#88C0D0" }),
  magenta = Color:new({ hexcode = "#B48EAD" }),
  cyan = Color:new({ hexcode = "#8FBCBB" }),
  white = Color:new({ hexcode = "#D8DEE9" }),
  bright_black = Color:new({ hexcode = "#3B4252" }),
  bright_red = Color:new({ hexcode = "#CE878F" }),
  bright_green = Color:new({ hexcode = "#99BB8B" }),
  bright_yellow = Color:new({ hexcode = "#D08770" }),
  bright_blue = Color:new({ hexcode = "#81A1C1" }),
  bright_magenta = Color:new({ hexcode = "#B08F90" }),
  bright_cyan = Color:new({ hexcode = "#5E81AC" }),
  bright_white = Color:new({ hexcode = "#E5E9F0" }),
}

---vim:filetype=lua
