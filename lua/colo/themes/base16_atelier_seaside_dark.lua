---@module "colo.themes.base16_atelier_seaside_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_atelier_seaside",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-atelier-seaside.json",
  background = "dark",
  black = Color:new({ hex = "#131513" }),
  red = Color:new({ hex = "#e6193c" }),
  green = Color:new({ hex = "#29a329" }),
  yellow = Color:new({ hex = "#98981b" }),
  blue = Color:new({ hex = "#3d62f5" }),
  magenta = Color:new({ hex = "#ad2bee" }),
  cyan = Color:new({ hex = "#1999b3" }),
  white = Color:new({ hex = "#8ca68c" }),
  bright_black = Color:new({ hex = "#687d68" }),
  bright_red = Color:new({ hex = "#e6193c" }),
  bright_green = Color:new({ hex = "#29a329" }),
  bright_yellow = Color:new({ hex = "#98981b" }),
  bright_blue = Color:new({ hex = "#3d62f5" }),
  bright_magenta = Color:new({ hex = "#ad2bee" }),
  bright_cyan = Color:new({ hex = "#1999b3" }),
  bright_white = Color:new({ hex = "#f4fbf4" }),
}

---vim:filetype=lua
