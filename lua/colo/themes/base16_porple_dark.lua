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
  black = Color:new({ hex = "#292c36" }),
  red = Color:new({ hex = "#f84547" }),
  green = Color:new({ hex = "#95c76f" }),
  yellow = Color:new({ hex = "#efa16b" }),
  blue = Color:new({ hex = "#8485ce" }),
  magenta = Color:new({ hex = "#b74989" }),
  cyan = Color:new({ hex = "#64878f" }),
  white = Color:new({ hex = "#d8d8d8" }),
  bright_black = Color:new({ hex = "#65568a" }),
  bright_red = Color:new({ hex = "#f84547" }),
  bright_green = Color:new({ hex = "#95c76f" }),
  bright_yellow = Color:new({ hex = "#efa16b" }),
  bright_blue = Color:new({ hex = "#8485ce" }),
  bright_magenta = Color:new({ hex = "#b74989" }),
  bright_cyan = Color:new({ hex = "#64878f" }),
  bright_white = Color:new({ hex = "#f8f8f8" }),
}

---vim:filetype=lua
