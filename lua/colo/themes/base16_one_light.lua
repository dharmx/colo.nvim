---@module "colo.themes.base16_one_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_one",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-one.json",
  background = "light",
  black = Color:new({ hex = "#fafafa" }),
  red = Color:new({ hex = "#ca1243" }),
  green = Color:new({ hex = "#50a14f" }),
  yellow = Color:new({ hex = "#c18401" }),
  blue = Color:new({ hex = "#4078f2" }),
  magenta = Color:new({ hex = "#a626a4" }),
  cyan = Color:new({ hex = "#0184bc" }),
  white = Color:new({ hex = "#383a42" }),
  bright_black = Color:new({ hex = "#a0a1a7" }),
  bright_red = Color:new({ hex = "#ca1243" }),
  bright_green = Color:new({ hex = "#50a14f" }),
  bright_yellow = Color:new({ hex = "#c18401" }),
  bright_blue = Color:new({ hex = "#4078f2" }),
  bright_magenta = Color:new({ hex = "#a626a4" }),
  bright_cyan = Color:new({ hex = "#0184bc" }),
  bright_white = Color:new({ hex = "#090a0b" }),
}

-- vim:filetype=lua
