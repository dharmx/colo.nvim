---@module "colo.themes.base16_flat_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_flat",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-flat.json",
  background = "dark",
  black = Color:new({ hex = "#2C3E50" }),
  red = Color:new({ hex = "#E74C3C" }),
  green = Color:new({ hex = "#2ECC71" }),
  yellow = Color:new({ hex = "#F1C40F" }),
  blue = Color:new({ hex = "#3498DB" }),
  magenta = Color:new({ hex = "#9B59B6" }),
  cyan = Color:new({ hex = "#1ABC9C" }),
  white = Color:new({ hex = "#e0e0e0" }),
  bright_black = Color:new({ hex = "#95A5A6" }),
  bright_red = Color:new({ hex = "#E74C3C" }),
  bright_green = Color:new({ hex = "#2ECC71" }),
  bright_yellow = Color:new({ hex = "#F1C40F" }),
  bright_blue = Color:new({ hex = "#3498DB" }),
  bright_magenta = Color:new({ hex = "#9B59B6" }),
  bright_cyan = Color:new({ hex = "#1ABC9C" }),
  bright_white = Color:new({ hex = "#ECF0F1" }),
}

---vim:filetype=lua
