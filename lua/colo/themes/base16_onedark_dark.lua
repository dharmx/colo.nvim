---@module "colo.themes.base16_onedark_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_onedark",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-onedark.json",
  background = "dark",
  black = Color:new({ hexcode = "#282c34" }),
  red = Color:new({ hexcode = "#e06c75" }),
  green = Color:new({ hexcode = "#98c379" }),
  yellow = Color:new({ hexcode = "#e5c07b" }),
  blue = Color:new({ hexcode = "#61afef" }),
  magenta = Color:new({ hexcode = "#c678dd" }),
  cyan = Color:new({ hexcode = "#56b6c2" }),
  white = Color:new({ hexcode = "#abb2bf" }),
  bright_black = Color:new({ hexcode = "#545862" }),
  bright_red = Color:new({ hexcode = "#e06c75" }),
  bright_green = Color:new({ hexcode = "#98c379" }),
  bright_yellow = Color:new({ hexcode = "#e5c07b" }),
  bright_blue = Color:new({ hexcode = "#61afef" }),
  bright_magenta = Color:new({ hexcode = "#c678dd" }),
  bright_cyan = Color:new({ hexcode = "#56b6c2" }),
  bright_white = Color:new({ hexcode = "#c8ccd4" }),
}

---vim:filetype=lua
