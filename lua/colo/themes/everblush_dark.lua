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
  black = Color:new({ hexcode = "#141b1e" }),
  red = Color:new({ hexcode = "#e57474" }),
  green = Color:new({ hexcode = "#8ccf7e" }),
  yellow = Color:new({ hexcode = "#e5c76b" }),
  blue = Color:new({ hexcode = "#67b0e8" }),
  magenta = Color:new({ hexcode = "#c47fd5" }),
  cyan = Color:new({ hexcode = "#6cbfbf" }),
  white = Color:new({ hexcode = "#dadada" }),
  bright_black = Color:new({ hexcode = "#3b4244" }),
  bright_red = Color:new({ hexcode = "#ef7d7d" }),
  bright_green = Color:new({ hexcode = "#6bc568" }),
  bright_yellow = Color:new({ hexcode = "#f4d67a" }),
  bright_blue = Color:new({ hexcode = "#71baf2" }),
  bright_magenta = Color:new({ hexcode = "#ce89df" }),
  bright_cyan = Color:new({ hexcode = "#67cbe7" }),
  bright_white = Color:new({ hexcode = "#bdc3c2" }),
}

---vim:filetype=lua
