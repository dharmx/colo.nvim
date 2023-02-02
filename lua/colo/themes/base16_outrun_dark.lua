---@module "colo.themes.base16_outrun_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_outrun",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-outrun.json",
  background = "dark",
  black = Color:new({ hex = "#00002A" }),
  red = Color:new({ hex = "#FF4242" }),
  green = Color:new({ hex = "#59F176" }),
  yellow = Color:new({ hex = "#F3E877" }),
  blue = Color:new({ hex = "#66B0FF" }),
  magenta = Color:new({ hex = "#F10596" }),
  cyan = Color:new({ hex = "#0EF0F0" }),
  white = Color:new({ hex = "#D0D0FA" }),
  bright_black = Color:new({ hex = "#50507A" }),
  bright_red = Color:new({ hex = "#FF4242" }),
  bright_green = Color:new({ hex = "#59F176" }),
  bright_yellow = Color:new({ hex = "#F3E877" }),
  bright_blue = Color:new({ hex = "#66B0FF" }),
  bright_magenta = Color:new({ hex = "#F10596" }),
  bright_cyan = Color:new({ hex = "#0EF0F0" }),
  bright_white = Color:new({ hex = "#F5F5FF" }),
}

-- vim:filetype=lua
