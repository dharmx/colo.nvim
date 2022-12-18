---@module "colo.themes.base16_black_metal_venom_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_black_metal_venom",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-black-metal-venom.json",
  background = "dark",
  black = Color:new({ hexcode = "#000000" }),
  red = Color:new({ hexcode = "#5f8787" }),
  green = Color:new({ hexcode = "#f8f7f2" }),
  yellow = Color:new({ hexcode = "#79241f" }),
  blue = Color:new({ hexcode = "#888888" }),
  magenta = Color:new({ hexcode = "#999999" }),
  cyan = Color:new({ hexcode = "#aaaaaa" }),
  white = Color:new({ hexcode = "#c1c1c1" }),
  bright_black = Color:new({ hexcode = "#333333" }),
  bright_red = Color:new({ hexcode = "#5f8787" }),
  bright_green = Color:new({ hexcode = "#f8f7f2" }),
  bright_yellow = Color:new({ hexcode = "#79241f" }),
  bright_blue = Color:new({ hexcode = "#888888" }),
  bright_magenta = Color:new({ hexcode = "#999999" }),
  bright_cyan = Color:new({ hexcode = "#aaaaaa" }),
  bright_white = Color:new({ hexcode = "#c1c1c1" }),
}

---vim:filetype=lua
