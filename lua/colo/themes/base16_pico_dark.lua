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
  black = Color:new({ hex = "#000000" }),
  red = Color:new({ hex = "#ff004d" }),
  green = Color:new({ hex = "#00e756" }),
  yellow = Color:new({ hex = "#fff024" }),
  blue = Color:new({ hex = "#83769c" }),
  magenta = Color:new({ hex = "#ff77a8" }),
  cyan = Color:new({ hex = "#29adff" }),
  white = Color:new({ hex = "#5f574f" }),
  bright_black = Color:new({ hex = "#008751" }),
  bright_red = Color:new({ hex = "#ff004d" }),
  bright_green = Color:new({ hex = "#00e756" }),
  bright_yellow = Color:new({ hex = "#fff024" }),
  bright_blue = Color:new({ hex = "#83769c" }),
  bright_magenta = Color:new({ hex = "#ff77a8" }),
  bright_cyan = Color:new({ hex = "#29adff" }),
  bright_white = Color:new({ hex = "#fff1e8" }),
}

-- vim:filetype=lua
