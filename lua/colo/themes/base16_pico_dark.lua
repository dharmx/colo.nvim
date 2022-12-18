---@module "colo.themes.base16_pico_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_pico",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-pico.json",
  background = "dark",
  black = Color:new({ hexcode = "#000000" }),
  red = Color:new({ hexcode = "#ff004d" }),
  green = Color:new({ hexcode = "#00e756" }),
  yellow = Color:new({ hexcode = "#fff024" }),
  blue = Color:new({ hexcode = "#83769c" }),
  magenta = Color:new({ hexcode = "#ff77a8" }),
  cyan = Color:new({ hexcode = "#29adff" }),
  white = Color:new({ hexcode = "#5f574f" }),
  bright_black = Color:new({ hexcode = "#008751" }),
  bright_red = Color:new({ hexcode = "#ff004d" }),
  bright_green = Color:new({ hexcode = "#00e756" }),
  bright_yellow = Color:new({ hexcode = "#fff024" }),
  bright_blue = Color:new({ hexcode = "#83769c" }),
  bright_magenta = Color:new({ hexcode = "#ff77a8" }),
  bright_cyan = Color:new({ hexcode = "#29adff" }),
  bright_white = Color:new({ hexcode = "#fff1e8" }),
}

---vim:filetype=lua
