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
  black = Color:new({ hex = "#0c0d0e" }),
  red = Color:new({ hex = "#e31a1c" }),
  green = Color:new({ hex = "#31a354" }),
  yellow = Color:new({ hex = "#dca060" }),
  blue = Color:new({ hex = "#3182bd" }),
  magenta = Color:new({ hex = "#756bb1" }),
  cyan = Color:new({ hex = "#80b1d3" }),
  white = Color:new({ hex = "#b7b8b9" }),
  bright_black = Color:new({ hex = "#737475" }),
  bright_red = Color:new({ hex = "#e31a1c" }),
  bright_green = Color:new({ hex = "#31a354" }),
  bright_yellow = Color:new({ hex = "#dca060" }),
  bright_blue = Color:new({ hex = "#3182bd" }),
  bright_magenta = Color:new({ hex = "#756bb1" }),
  bright_cyan = Color:new({ hex = "#80b1d3" }),
  bright_white = Color:new({ hex = "#fcfdfe" }),
}

---vim:filetype=lua
