---@module "colo.themes.base16_brewer_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_brewer",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-brewer.json",
  background = "dark",
  black = Color:new({ hexcode = "#0c0d0e" }),
  red = Color:new({ hexcode = "#e31a1c" }),
  green = Color:new({ hexcode = "#31a354" }),
  yellow = Color:new({ hexcode = "#dca060" }),
  blue = Color:new({ hexcode = "#3182bd" }),
  magenta = Color:new({ hexcode = "#756bb1" }),
  cyan = Color:new({ hexcode = "#80b1d3" }),
  white = Color:new({ hexcode = "#b7b8b9" }),
  bright_black = Color:new({ hexcode = "#737475" }),
  bright_red = Color:new({ hexcode = "#e31a1c" }),
  bright_green = Color:new({ hexcode = "#31a354" }),
  bright_yellow = Color:new({ hexcode = "#dca060" }),
  bright_blue = Color:new({ hexcode = "#3182bd" }),
  bright_magenta = Color:new({ hexcode = "#756bb1" }),
  bright_cyan = Color:new({ hexcode = "#80b1d3" }),
  bright_white = Color:new({ hexcode = "#fcfdfe" }),
}

---vim:filetype=lua
