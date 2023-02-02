---@module "colo.themes.base16_railscasts_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_railscasts",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-railscasts.json",
  background = "dark",
  black = Color:new({ hex = "#2b2b2b" }),
  red = Color:new({ hex = "#da4939" }),
  green = Color:new({ hex = "#a5c261" }),
  yellow = Color:new({ hex = "#ffc66d" }),
  blue = Color:new({ hex = "#6d9cbe" }),
  magenta = Color:new({ hex = "#b6b3eb" }),
  cyan = Color:new({ hex = "#519f50" }),
  white = Color:new({ hex = "#e6e1dc" }),
  bright_black = Color:new({ hex = "#5a647e" }),
  bright_red = Color:new({ hex = "#da4939" }),
  bright_green = Color:new({ hex = "#a5c261" }),
  bright_yellow = Color:new({ hex = "#ffc66d" }),
  bright_blue = Color:new({ hex = "#6d9cbe" }),
  bright_magenta = Color:new({ hex = "#b6b3eb" }),
  bright_cyan = Color:new({ hex = "#519f50" }),
  bright_white = Color:new({ hex = "#f9f7f3" }),
}

-- vim:filetype=lua
