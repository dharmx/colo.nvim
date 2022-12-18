---@module "colo.themes.base16_hopscotch_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_hopscotch",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-hopscotch.json",
  background = "dark",
  black = Color:new({ hexcode = "#322931" }),
  red = Color:new({ hexcode = "#dd464c" }),
  green = Color:new({ hexcode = "#8fc13e" }),
  yellow = Color:new({ hexcode = "#fdcc59" }),
  blue = Color:new({ hexcode = "#1290bf" }),
  magenta = Color:new({ hexcode = "#c85e7c" }),
  cyan = Color:new({ hexcode = "#149b93" }),
  white = Color:new({ hexcode = "#b9b5b8" }),
  bright_black = Color:new({ hexcode = "#797379" }),
  bright_red = Color:new({ hexcode = "#dd464c" }),
  bright_green = Color:new({ hexcode = "#8fc13e" }),
  bright_yellow = Color:new({ hexcode = "#fdcc59" }),
  bright_blue = Color:new({ hexcode = "#1290bf" }),
  bright_magenta = Color:new({ hexcode = "#c85e7c" }),
  bright_cyan = Color:new({ hexcode = "#149b93" }),
  bright_white = Color:new({ hexcode = "#ffffff" }),
}

---vim:filetype=lua
