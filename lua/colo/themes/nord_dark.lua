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
  black = Color:new({ hex = "#2E3440" }),
  red = Color:new({ hex = "#BF616A" }),
  green = Color:new({ hex = "#A3BE8C" }),
  yellow = Color:new({ hex = "#EBCB8B" }),
  blue = Color:new({ hex = "#88C0D0" }),
  magenta = Color:new({ hex = "#B48EAD" }),
  cyan = Color:new({ hex = "#8FBCBB" }),
  white = Color:new({ hex = "#D8DEE9" }),
  bright_black = Color:new({ hex = "#3B4252" }),
  bright_red = Color:new({ hex = "#CE878F" }),
  bright_green = Color:new({ hex = "#99BB8B" }),
  bright_yellow = Color:new({ hex = "#D08770" }),
  bright_blue = Color:new({ hex = "#81A1C1" }),
  bright_magenta = Color:new({ hex = "#B08F90" }),
  bright_cyan = Color:new({ hex = "#5E81AC" }),
  bright_white = Color:new({ hex = "#E5E9F0" }),
}

-- vim:filetype=lua
