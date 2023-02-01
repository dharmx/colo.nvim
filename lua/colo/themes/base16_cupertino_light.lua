---@module "colo.themes.base16_cupertino_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_cupertino",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-cupertino.json",
  background = "light",
  black = Color:new({ hexcode = "#ffffff" }),
  red = Color:new({ hexcode = "#c41a15" }),
  green = Color:new({ hexcode = "#007400" }),
  yellow = Color:new({ hexcode = "#826b28" }),
  blue = Color:new({ hexcode = "#0000ff" }),
  magenta = Color:new({ hexcode = "#a90d91" }),
  cyan = Color:new({ hexcode = "#318495" }),
  white = Color:new({ hexcode = "#404040" }),
  bright_black = Color:new({ hexcode = "#808080" }),
  bright_red = Color:new({ hexcode = "#c41a15" }),
  bright_green = Color:new({ hexcode = "#007400" }),
  bright_yellow = Color:new({ hexcode = "#826b28" }),
  bright_blue = Color:new({ hexcode = "#0000ff" }),
  bright_magenta = Color:new({ hexcode = "#a90d91" }),
  bright_cyan = Color:new({ hexcode = "#318495" }),
  bright_white = Color:new({ hexcode = "#5e5e5e" }),
}

---vim:filetype=lua
