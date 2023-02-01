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
  black = Color:new({ hexcode = "#2C3E50" }),
  red = Color:new({ hexcode = "#E74C3C" }),
  green = Color:new({ hexcode = "#2ECC71" }),
  yellow = Color:new({ hexcode = "#F1C40F" }),
  blue = Color:new({ hexcode = "#3498DB" }),
  magenta = Color:new({ hexcode = "#9B59B6" }),
  cyan = Color:new({ hexcode = "#1ABC9C" }),
  white = Color:new({ hexcode = "#e0e0e0" }),
  bright_black = Color:new({ hexcode = "#95A5A6" }),
  bright_red = Color:new({ hexcode = "#E74C3C" }),
  bright_green = Color:new({ hexcode = "#2ECC71" }),
  bright_yellow = Color:new({ hexcode = "#F1C40F" }),
  bright_blue = Color:new({ hexcode = "#3498DB" }),
  bright_magenta = Color:new({ hexcode = "#9B59B6" }),
  bright_cyan = Color:new({ hexcode = "#1ABC9C" }),
  bright_white = Color:new({ hexcode = "#ECF0F1" }),
}

---vim:filetype=lua
