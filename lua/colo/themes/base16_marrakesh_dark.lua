---@module "colo.themes.base16_marrakesh_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_marrakesh",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-marrakesh.json",
  background = "dark",
  black = Color:new({ hexcode = "#201602" }),
  red = Color:new({ hexcode = "#c35359" }),
  green = Color:new({ hexcode = "#18974e" }),
  yellow = Color:new({ hexcode = "#a88339" }),
  blue = Color:new({ hexcode = "#477ca1" }),
  magenta = Color:new({ hexcode = "#8868b3" }),
  cyan = Color:new({ hexcode = "#75a738" }),
  white = Color:new({ hexcode = "#948e48" }),
  bright_black = Color:new({ hexcode = "#6c6823" }),
  bright_red = Color:new({ hexcode = "#c35359" }),
  bright_green = Color:new({ hexcode = "#18974e" }),
  bright_yellow = Color:new({ hexcode = "#a88339" }),
  bright_blue = Color:new({ hexcode = "#477ca1" }),
  bright_magenta = Color:new({ hexcode = "#8868b3" }),
  bright_cyan = Color:new({ hexcode = "#75a738" }),
  bright_white = Color:new({ hexcode = "#faf0a5" }),
}

---vim:filetype=lua
