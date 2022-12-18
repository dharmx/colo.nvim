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
  black = Color:new({ hexcode = "#fbf1f2" }),
  red = Color:new({ hexcode = "#D57E85" }),
  green = Color:new({ hexcode = "#A3B367" }),
  yellow = Color:new({ hexcode = "#DCB16C" }),
  blue = Color:new({ hexcode = "#7297B9" }),
  magenta = Color:new({ hexcode = "#BB99B4" }),
  cyan = Color:new({ hexcode = "#69A9A7" }),
  white = Color:new({ hexcode = "#8b8198" }),
  bright_black = Color:new({ hexcode = "#bfb9c6" }),
  bright_red = Color:new({ hexcode = "#D57E85" }),
  bright_green = Color:new({ hexcode = "#A3B367" }),
  bright_yellow = Color:new({ hexcode = "#DCB16C" }),
  bright_blue = Color:new({ hexcode = "#7297B9" }),
  bright_magenta = Color:new({ hexcode = "#BB99B4" }),
  bright_cyan = Color:new({ hexcode = "#69A9A7" }),
  bright_white = Color:new({ hexcode = "#585062" }),
}

---vim:filetype=lua
