---@module "colo.themes.base16_macintosh_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_macintosh",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-macintosh.json",
  background = "dark",
  black = Color:new({ hex = "#000000" }),
  red = Color:new({ hex = "#dd0907" }),
  green = Color:new({ hex = "#1fb714" }),
  yellow = Color:new({ hex = "#fbf305" }),
  blue = Color:new({ hex = "#0000d3" }),
  magenta = Color:new({ hex = "#4700a5" }),
  cyan = Color:new({ hex = "#02abea" }),
  white = Color:new({ hex = "#c0c0c0" }),
  bright_black = Color:new({ hex = "#808080" }),
  bright_red = Color:new({ hex = "#dd0907" }),
  bright_green = Color:new({ hex = "#1fb714" }),
  bright_yellow = Color:new({ hex = "#fbf305" }),
  bright_blue = Color:new({ hex = "#0000d3" }),
  bright_magenta = Color:new({ hex = "#4700a5" }),
  bright_cyan = Color:new({ hex = "#02abea" }),
  bright_white = Color:new({ hex = "#ffffff" }),
}

---vim:filetype=lua
