---@module "colo.themes.base16_porple_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_porple",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-porple.json",
  background = "dark",
  black = Color:new({ hexcode = "#292c36" }),
  red = Color:new({ hexcode = "#f84547" }),
  green = Color:new({ hexcode = "#95c76f" }),
  yellow = Color:new({ hexcode = "#efa16b" }),
  blue = Color:new({ hexcode = "#8485ce" }),
  magenta = Color:new({ hexcode = "#b74989" }),
  cyan = Color:new({ hexcode = "#64878f" }),
  white = Color:new({ hexcode = "#d8d8d8" }),
  bright_black = Color:new({ hexcode = "#65568a" }),
  bright_red = Color:new({ hexcode = "#f84547" }),
  bright_green = Color:new({ hexcode = "#95c76f" }),
  bright_yellow = Color:new({ hexcode = "#efa16b" }),
  bright_blue = Color:new({ hexcode = "#8485ce" }),
  bright_magenta = Color:new({ hexcode = "#b74989" }),
  bright_cyan = Color:new({ hexcode = "#64878f" }),
  bright_white = Color:new({ hexcode = "#f8f8f8" }),
}

---vim:filetype=lua
