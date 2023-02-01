---@module "colo.themes.base16_cupcake_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_cupcake",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-cupcake.json",
  background = "light",
  black = Color:new({ hex = "#fbf1f2" }),
  red = Color:new({ hex = "#D57E85" }),
  green = Color:new({ hex = "#A3B367" }),
  yellow = Color:new({ hex = "#DCB16C" }),
  blue = Color:new({ hex = "#7297B9" }),
  magenta = Color:new({ hex = "#BB99B4" }),
  cyan = Color:new({ hex = "#69A9A7" }),
  white = Color:new({ hex = "#8b8198" }),
  bright_black = Color:new({ hex = "#bfb9c6" }),
  bright_red = Color:new({ hex = "#D57E85" }),
  bright_green = Color:new({ hex = "#A3B367" }),
  bright_yellow = Color:new({ hex = "#DCB16C" }),
  bright_blue = Color:new({ hex = "#7297B9" }),
  bright_magenta = Color:new({ hex = "#BB99B4" }),
  bright_cyan = Color:new({ hex = "#69A9A7" }),
  bright_white = Color:new({ hex = "#585062" }),
}

---vim:filetype=lua
