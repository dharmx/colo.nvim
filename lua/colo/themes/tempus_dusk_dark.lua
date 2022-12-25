---@module "colo.themes.tempus_dusk_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "tempus_dusk",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/tempus_dusk.json",
  background = "dark",
  black = Color:new({ hexcode = "#1f252d" }),
  red = Color:new({ hexcode = "#cb8d56" }),
  green = Color:new({ hexcode = "#8ba089" }),
  yellow = Color:new({ hexcode = "#a79c46" }),
  blue = Color:new({ hexcode = "#8c9abe" }),
  magenta = Color:new({ hexcode = "#b190af" }),
  cyan = Color:new({ hexcode = "#8e9aba" }),
  white = Color:new({ hexcode = "#a2a8ba" }),
  bright_black = Color:new({ hexcode = "#a29899" }),
  bright_red = Color:new({ hexcode = "#d39d74" }),
  bright_green = Color:new({ hexcode = "#80b48f" }),
  bright_yellow = Color:new({ hexcode = "#bda75a" }),
  bright_blue = Color:new({ hexcode = "#9ca5de" }),
  bright_magenta = Color:new({ hexcode = "#c69ac6" }),
  bright_cyan = Color:new({ hexcode = "#8caeb6" }),
  bright_white = Color:new({ hexcode = "#a2a8ba" }),
}

---vim:filetype=lua
