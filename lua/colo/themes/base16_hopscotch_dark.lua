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
  black = Color:new({ hex = "#322931" }),
  red = Color:new({ hex = "#dd464c" }),
  green = Color:new({ hex = "#8fc13e" }),
  yellow = Color:new({ hex = "#fdcc59" }),
  blue = Color:new({ hex = "#1290bf" }),
  magenta = Color:new({ hex = "#c85e7c" }),
  cyan = Color:new({ hex = "#149b93" }),
  white = Color:new({ hex = "#b9b5b8" }),
  bright_black = Color:new({ hex = "#797379" }),
  bright_red = Color:new({ hex = "#dd464c" }),
  bright_green = Color:new({ hex = "#8fc13e" }),
  bright_yellow = Color:new({ hex = "#fdcc59" }),
  bright_blue = Color:new({ hex = "#1290bf" }),
  bright_magenta = Color:new({ hex = "#c85e7c" }),
  bright_cyan = Color:new({ hex = "#149b93" }),
  bright_white = Color:new({ hex = "#ffffff" }),
}

-- vim:filetype=lua
