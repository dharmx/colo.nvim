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
  black = Color:new({ hexcode = "#00002A" }),
  red = Color:new({ hexcode = "#FF4242" }),
  green = Color:new({ hexcode = "#59F176" }),
  yellow = Color:new({ hexcode = "#F3E877" }),
  blue = Color:new({ hexcode = "#66B0FF" }),
  magenta = Color:new({ hexcode = "#F10596" }),
  cyan = Color:new({ hexcode = "#0EF0F0" }),
  white = Color:new({ hexcode = "#D0D0FA" }),
  bright_black = Color:new({ hexcode = "#50507A" }),
  bright_red = Color:new({ hexcode = "#FF4242" }),
  bright_green = Color:new({ hexcode = "#59F176" }),
  bright_yellow = Color:new({ hexcode = "#F3E877" }),
  bright_blue = Color:new({ hexcode = "#66B0FF" }),
  bright_magenta = Color:new({ hexcode = "#F10596" }),
  bright_cyan = Color:new({ hexcode = "#0EF0F0" }),
  bright_white = Color:new({ hexcode = "#F5F5FF" }),
}

---vim:filetype=lua
