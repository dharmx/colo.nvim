---@module "colo.themes.base16_bespin_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_bespin",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-bespin.json",
  background = "dark",
  black = Color:new({ hex = "#28211c" }),
  red = Color:new({ hex = "#cf6a4c" }),
  green = Color:new({ hex = "#54be0d" }),
  yellow = Color:new({ hex = "#f9ee98" }),
  blue = Color:new({ hex = "#5ea6ea" }),
  magenta = Color:new({ hex = "#9b859d" }),
  cyan = Color:new({ hex = "#afc4db" }),
  white = Color:new({ hex = "#8a8986" }),
  bright_black = Color:new({ hex = "#666666" }),
  bright_red = Color:new({ hex = "#cf6a4c" }),
  bright_green = Color:new({ hex = "#54be0d" }),
  bright_yellow = Color:new({ hex = "#f9ee98" }),
  bright_blue = Color:new({ hex = "#5ea6ea" }),
  bright_magenta = Color:new({ hex = "#9b859d" }),
  bright_cyan = Color:new({ hex = "#afc4db" }),
  bright_white = Color:new({ hex = "#baae9e" }),
}

-- vim:filetype=lua
