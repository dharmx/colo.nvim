---@module "colo.themes.ashes_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "ashes",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/ashes.json",
  background = "dark",
  black = Color:new({ hex = "#1c2023" }),
  red = Color:new({ hex = "#c7ae95" }),
  green = Color:new({ hex = "#95c7ae" }),
  yellow = Color:new({ hex = "#aec795" }),
  blue = Color:new({ hex = "#ae95c7" }),
  magenta = Color:new({ hex = "#c795ae" }),
  cyan = Color:new({ hex = "#95aec7" }),
  white = Color:new({ hex = "#c7ccd1" }),
  bright_black = Color:new({ hex = "#747c84" }),
  bright_red = Color:new({ hex = "#c7ae95" }),
  bright_green = Color:new({ hex = "#95c7ae" }),
  bright_yellow = Color:new({ hex = "#aec795" }),
  bright_blue = Color:new({ hex = "#ae95c7" }),
  bright_magenta = Color:new({ hex = "#c795ae" }),
  bright_cyan = Color:new({ hex = "#95aec7" }),
  bright_white = Color:new({ hex = "#f3f4f5" }),
}

-- vim:filetype=lua
