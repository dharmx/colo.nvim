---@module "colo.themes.tempus_totus_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "tempus_totus",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/tempus_totus.json",
  background = "light",
  black = Color:new({ hexcode = "#f4f1f0" }),
  red = Color:new({ hexcode = "#a01c10" }),
  green = Color:new({ hexcode = "#0b5d46" }),
  yellow = Color:new({ hexcode = "#545422" }),
  blue = Color:new({ hexcode = "#1c4f9f" }),
  magenta = Color:new({ hexcode = "#942166" }),
  cyan = Color:new({ hexcode = "#185870" }),
  white = Color:new({ hexcode = "#52505e" }),
  bright_black = Color:new({ hexcode = "#575050" }),
  bright_red = Color:new({ hexcode = "#913210" }),
  bright_green = Color:new({ hexcode = "#2a5d08" }),
  bright_yellow = Color:new({ hexcode = "#774611" }),
  bright_blue = Color:new({ hexcode = "#5440a7" }),
  bright_magenta = Color:new({ hexcode = "#8d0e9b" }),
  bright_cyan = Color:new({ hexcode = "#0e577b" }),
  bright_white = Color:new({ hexcode = "#52505e" }),
}

---vim:filetype=lua
