---@module "colo.themes.base16_materialer_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_materialer",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-materialer.json",
  background = "light",
  black = Color:new({ hexcode = "#FAFAFA" }),
  red = Color:new({ hexcode = "#FF5370" }),
  green = Color:new({ hexcode = "#91B859" }),
  yellow = Color:new({ hexcode = "#FFB62C" }),
  blue = Color:new({ hexcode = "#6182B8" }),
  magenta = Color:new({ hexcode = "#7C4DFF" }),
  cyan = Color:new({ hexcode = "#39ADB5" }),
  white = Color:new({ hexcode = "#80CBC4" }),
  bright_black = Color:new({ hexcode = "#CCD7DA" }),
  bright_red = Color:new({ hexcode = "#FF5370" }),
  bright_green = Color:new({ hexcode = "#91B859" }),
  bright_yellow = Color:new({ hexcode = "#FFB62C" }),
  bright_blue = Color:new({ hexcode = "#6182B8" }),
  bright_magenta = Color:new({ hexcode = "#7C4DFF" }),
  bright_cyan = Color:new({ hexcode = "#39ADB5" }),
  bright_white = Color:new({ hexcode = "#80CBC4" }),
}

---vim:filetype=lua
