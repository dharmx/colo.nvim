---@module "colo.themes.tempus_autumn_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "tempus_autumn",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/tempus_autumn.json",
  background = "dark",
  black = Color:new({ hex = "#322622" }),
  red = Color:new({ hex = "#fc5526" }),
  green = Color:new({ hex = "#83973f" }),
  yellow = Color:new({ hex = "#9e9022" }),
  blue = Color:new({ hex = "#7f8dbf" }),
  magenta = Color:new({ hex = "#ce7673" }),
  cyan = Color:new({ hex = "#6e978b" }),
  white = Color:new({ hex = "#8e8f8d" }),
  bright_black = Color:new({ hex = "#919078" }),
  bright_red = Color:new({ hex = "#dc721a" }),
  bright_green = Color:new({ hex = "#609d59" }),
  bright_yellow = Color:new({ hex = "#b1891a" }),
  bright_blue = Color:new({ hex = "#6b8ed6" }),
  bright_magenta = Color:new({ hex = "#9d80d3" }),
  bright_cyan = Color:new({ hex = "#229ea0" }),
  bright_white = Color:new({ hex = "#8e8f8d" }),
}

---vim:filetype=lua
