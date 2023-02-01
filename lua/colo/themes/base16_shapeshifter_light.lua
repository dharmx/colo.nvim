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
  black = Color:new({ hex = "#f9f9f9" }),
  red = Color:new({ hex = "#e92f2f" }),
  green = Color:new({ hex = "#0ed839" }),
  yellow = Color:new({ hex = "#dddd13" }),
  blue = Color:new({ hex = "#3b48e3" }),
  magenta = Color:new({ hex = "#f996e2" }),
  cyan = Color:new({ hex = "#23edda" }),
  white = Color:new({ hex = "#102015" }),
  bright_black = Color:new({ hex = "#555555" }),
  bright_red = Color:new({ hex = "#e92f2f" }),
  bright_green = Color:new({ hex = "#0ed839" }),
  bright_yellow = Color:new({ hex = "#dddd13" }),
  bright_blue = Color:new({ hex = "#3b48e3" }),
  bright_magenta = Color:new({ hex = "#f996e2" }),
  bright_cyan = Color:new({ hex = "#23edda" }),
  bright_white = Color:new({ hex = "#000000" }),
}

---vim:filetype=lua
