---@module "colo.themes.base16_shapeshifter_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_shapeshifter",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-shapeshifter.json",
  background = "light",
  black = Color:new({ hexcode = "#f9f9f9" }),
  red = Color:new({ hexcode = "#e92f2f" }),
  green = Color:new({ hexcode = "#0ed839" }),
  yellow = Color:new({ hexcode = "#dddd13" }),
  blue = Color:new({ hexcode = "#3b48e3" }),
  magenta = Color:new({ hexcode = "#f996e2" }),
  cyan = Color:new({ hexcode = "#23edda" }),
  white = Color:new({ hexcode = "#102015" }),
  bright_black = Color:new({ hexcode = "#555555" }),
  bright_red = Color:new({ hexcode = "#e92f2f" }),
  bright_green = Color:new({ hexcode = "#0ed839" }),
  bright_yellow = Color:new({ hexcode = "#dddd13" }),
  bright_blue = Color:new({ hexcode = "#3b48e3" }),
  bright_magenta = Color:new({ hexcode = "#f996e2" }),
  bright_cyan = Color:new({ hexcode = "#23edda" }),
  bright_white = Color:new({ hexcode = "#000000" }),
}

---vim:filetype=lua
