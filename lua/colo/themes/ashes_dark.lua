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
  black = Color:new({ hexcode = "#1c2023" }),
  red = Color:new({ hexcode = "#c7ae95" }),
  green = Color:new({ hexcode = "#95c7ae" }),
  yellow = Color:new({ hexcode = "#aec795" }),
  blue = Color:new({ hexcode = "#ae95c7" }),
  magenta = Color:new({ hexcode = "#c795ae" }),
  cyan = Color:new({ hexcode = "#95aec7" }),
  white = Color:new({ hexcode = "#c7ccd1" }),
  bright_black = Color:new({ hexcode = "#747c84" }),
  bright_red = Color:new({ hexcode = "#c7ae95" }),
  bright_green = Color:new({ hexcode = "#95c7ae" }),
  bright_yellow = Color:new({ hexcode = "#aec795" }),
  bright_blue = Color:new({ hexcode = "#ae95c7" }),
  bright_magenta = Color:new({ hexcode = "#c795ae" }),
  bright_cyan = Color:new({ hexcode = "#95aec7" }),
  bright_white = Color:new({ hexcode = "#f3f4f5" }),
}

---vim:filetype=lua
