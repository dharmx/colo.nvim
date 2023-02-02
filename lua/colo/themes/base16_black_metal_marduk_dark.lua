---@module "colo.themes.base16_black_metal_marduk_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_black_metal_marduk",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-black-metal-marduk.json",
  background = "dark",
  black = Color:new({ hex = "#000000" }),
  red = Color:new({ hex = "#5f8787" }),
  green = Color:new({ hex = "#a5aaa7" }),
  yellow = Color:new({ hex = "#626b67" }),
  blue = Color:new({ hex = "#888888" }),
  magenta = Color:new({ hex = "#999999" }),
  cyan = Color:new({ hex = "#aaaaaa" }),
  white = Color:new({ hex = "#c1c1c1" }),
  bright_black = Color:new({ hex = "#333333" }),
  bright_red = Color:new({ hex = "#5f8787" }),
  bright_green = Color:new({ hex = "#a5aaa7" }),
  bright_yellow = Color:new({ hex = "#626b67" }),
  bright_blue = Color:new({ hex = "#888888" }),
  bright_magenta = Color:new({ hex = "#999999" }),
  bright_cyan = Color:new({ hex = "#aaaaaa" }),
  bright_white = Color:new({ hex = "#c1c1c1" }),
}

-- vim:filetype=lua
