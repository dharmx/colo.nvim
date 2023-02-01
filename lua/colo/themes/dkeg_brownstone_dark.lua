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
  black = Color:new({ hexcode = "#272825" }),
  red = Color:new({ hexcode = "#674839" }),
  green = Color:new({ hexcode = "#6e794f" }),
  yellow = Color:new({ hexcode = "#7e744d" }),
  blue = Color:new({ hexcode = "#3b474e" }),
  magenta = Color:new({ hexcode = "#554c41" }),
  cyan = Color:new({ hexcode = "#495355" }),
  white = Color:new({ hexcode = "#b0b0af" }),
  bright_black = Color:new({ hexcode = "#b0b0af" }),
  bright_red = Color:new({ hexcode = "#674839" }),
  bright_green = Color:new({ hexcode = "#6e794f" }),
  bright_yellow = Color:new({ hexcode = "#7e744d" }),
  bright_blue = Color:new({ hexcode = "#3b474e" }),
  bright_magenta = Color:new({ hexcode = "#554c41" }),
  bright_cyan = Color:new({ hexcode = "#495355" }),
  bright_white = Color:new({ hexcode = "#c7c7c7" }),
}

---vim:filetype=lua
