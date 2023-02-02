---@module "colo.themes.chocolate_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "snakedye",
  name = "chocolate_dark",
  description = "A colorscheme for night dwellers.",
  source = "https://gitlab.com/snakedye/chocolate",
  background = "dark",
  black = Color:new({ hex = "#252221" }),
  red = Color:new({ hex = "#c65f5f" }),
  green = Color:new({ hex = "#859e82" }),
  yellow = Color:new({ hex = "#d9b27c" }),
  blue = Color:new({ hex = "#728797" }),
  magenta = Color:new({ hex = "#998396" }),
  cyan = Color:new({ hex = "#829e9b" }),
  white = Color:new({ hex = "#c8bAA4" }),
  bright_black = Color:new({ hex = "#262322" }),
  bright_red = Color:new({ hex = "#ab9382" }),
  bright_green = Color:new({ hex = "#859e82" }),
  bright_yellow = Color:new({ hex = "#d08b65" }),
  bright_blue = Color:new({ hex = "#728797" }),
  bright_magenta = Color:new({ hex = "#998396" }),
  bright_cyan = Color:new({ hex = "#829e9b" }),
  bright_white = Color:new({ hex = "#beae94" }),
}

-- vim:filetype=lua
