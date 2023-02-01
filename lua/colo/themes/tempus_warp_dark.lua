---@module "colo.themes.tempus_warp_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "tempus_warp",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/tempus_warp.json",
  background = "dark",
  black = Color:new({ hex = "#141a19" }),
  red = Color:new({ hex = "#ff1414" }),
  green = Color:new({ hex = "#009600" }),
  yellow = Color:new({ hex = "#928100" }),
  blue = Color:new({ hex = "#4f76ff" }),
  magenta = Color:new({ hex = "#dd38bc" }),
  cyan = Color:new({ hex = "#358aaa" }),
  white = Color:new({ hex = "#928f90" }),
  bright_black = Color:new({ hex = "#927b80" }),
  bright_red = Color:new({ hex = "#ff5500" }),
  bright_green = Color:new({ hex = "#3aa43a" }),
  bright_yellow = Color:new({ hex = "#b38a00" }),
  bright_blue = Color:new({ hex = "#8082ff" }),
  bright_magenta = Color:new({ hex = "#d159fd" }),
  bright_cyan = Color:new({ hex = "#1da190" }),
  bright_white = Color:new({ hex = "#928f90" }),
}

---vim:filetype=lua
