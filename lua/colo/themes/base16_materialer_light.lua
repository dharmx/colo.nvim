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
  black = Color:new({ hex = "#FAFAFA" }),
  red = Color:new({ hex = "#FF5370" }),
  green = Color:new({ hex = "#91B859" }),
  yellow = Color:new({ hex = "#FFB62C" }),
  blue = Color:new({ hex = "#6182B8" }),
  magenta = Color:new({ hex = "#7C4DFF" }),
  cyan = Color:new({ hex = "#39ADB5" }),
  white = Color:new({ hex = "#80CBC4" }),
  bright_black = Color:new({ hex = "#CCD7DA" }),
  bright_red = Color:new({ hex = "#FF5370" }),
  bright_green = Color:new({ hex = "#91B859" }),
  bright_yellow = Color:new({ hex = "#FFB62C" }),
  bright_blue = Color:new({ hex = "#6182B8" }),
  bright_magenta = Color:new({ hex = "#7C4DFF" }),
  bright_cyan = Color:new({ hex = "#39ADB5" }),
  bright_white = Color:new({ hex = "#80CBC4" }),
}

---vim:filetype=lua
