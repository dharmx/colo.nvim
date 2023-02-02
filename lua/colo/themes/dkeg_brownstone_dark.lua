---@module "colo.themes.dkeg_brownstone_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "dkeg_brownstone",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/dkeg-brownstone.json",
  background = "dark",
  black = Color:new({ hex = "#272825" }),
  red = Color:new({ hex = "#674839" }),
  green = Color:new({ hex = "#6e794f" }),
  yellow = Color:new({ hex = "#7e744d" }),
  blue = Color:new({ hex = "#3b474e" }),
  magenta = Color:new({ hex = "#554c41" }),
  cyan = Color:new({ hex = "#495355" }),
  white = Color:new({ hex = "#b0b0af" }),
  bright_black = Color:new({ hex = "#b0b0af" }),
  bright_red = Color:new({ hex = "#674839" }),
  bright_green = Color:new({ hex = "#6e794f" }),
  bright_yellow = Color:new({ hex = "#7e744d" }),
  bright_blue = Color:new({ hex = "#3b474e" }),
  bright_magenta = Color:new({ hex = "#554c41" }),
  bright_cyan = Color:new({ hex = "#495355" }),
  bright_white = Color:new({ hex = "#c7c7c7" }),
}

-- vim:filetype=lua
