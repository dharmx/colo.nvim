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
  black = Color:new({ hexcode = "#000000" }),
  red = Color:new({ hexcode = "#dd0907" }),
  green = Color:new({ hexcode = "#1fb714" }),
  yellow = Color:new({ hexcode = "#fbf305" }),
  blue = Color:new({ hexcode = "#0000d3" }),
  magenta = Color:new({ hexcode = "#4700a5" }),
  cyan = Color:new({ hexcode = "#02abea" }),
  white = Color:new({ hexcode = "#c0c0c0" }),
  bright_black = Color:new({ hexcode = "#808080" }),
  bright_red = Color:new({ hexcode = "#dd0907" }),
  bright_green = Color:new({ hexcode = "#1fb714" }),
  bright_yellow = Color:new({ hexcode = "#fbf305" }),
  bright_blue = Color:new({ hexcode = "#0000d3" }),
  bright_magenta = Color:new({ hexcode = "#4700a5" }),
  bright_cyan = Color:new({ hexcode = "#02abea" }),
  bright_white = Color:new({ hexcode = "#ffffff" }),
}

---vim:filetype=lua
