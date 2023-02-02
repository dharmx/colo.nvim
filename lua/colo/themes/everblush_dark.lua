---@module "colo.themes.everblush_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "mangeshrex",
  name = "everblush",
  description = "A dark, vibrant and beautiful Colorscheme.",
  source = "https://github.com/Everblush/everblush",
  background = "dark",
  black = Color:new({ hex = "#141b1e" }),
  red = Color:new({ hex = "#e57474" }),
  green = Color:new({ hex = "#8ccf7e" }),
  yellow = Color:new({ hex = "#e5c76b" }),
  blue = Color:new({ hex = "#67b0e8" }),
  magenta = Color:new({ hex = "#c47fd5" }),
  cyan = Color:new({ hex = "#6cbfbf" }),
  white = Color:new({ hex = "#dadada" }),
  bright_black = Color:new({ hex = "#3b4244" }),
  bright_red = Color:new({ hex = "#ef7d7d" }),
  bright_green = Color:new({ hex = "#6bc568" }),
  bright_yellow = Color:new({ hex = "#f4d67a" }),
  bright_blue = Color:new({ hex = "#71baf2" }),
  bright_magenta = Color:new({ hex = "#ce89df" }),
  bright_cyan = Color:new({ hex = "#67cbe7" }),
  bright_white = Color:new({ hex = "#bdc3c2" }),
}

-- vim:filetype=lua
