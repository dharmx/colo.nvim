---@module "colo.colors.everforest_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "sainnhe",
  name = "everforest",
  description = "Comfortable & Pleasant Color Scheme for Vim.",
  source = "https://github.com/sainnhe/everforest",
  background = "dark",
  black = Color:new({ hexcode = "#2b3339" }),
  red = Color:new({ hexcode = "#e67e80" }),
  green = Color:new({ hexcode = "#83c092" }),
  yellow = Color:new({ hexcode = "#dbbc7f" }),
  blue = Color:new({ hexcode = "#7393b3" }),
  magenta = Color:new({ hexcode = "#ecafcc" }),
  cyan = Color:new({ hexcode = "#7fbbb3" }),
  white = Color:new({ hexcode = "#D3C6AA" }),
  bright_black = Color:new({ hexcode = "#323c41" }),
  bright_red = Color:new({ hexcode = "#e69875" }),
  bright_green = Color:new({ hexcode = "#a7c080" }),
  bright_yellow = Color:new({ hexcode = "#d1b171" }),
  bright_blue = Color:new({ hexcode = "#7393b3" }),
  bright_magenta = Color:new({ hexcode = "#d699b6" }),
  bright_cyan = Color:new({ hexcode = "#78b4ac" }),
  bright_white = Color:new({ hexcode = "#ddd0b4" }),
}

---vim:filetype=lua
