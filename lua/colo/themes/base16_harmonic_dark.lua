---@module "colo.themes.base16_harmonic_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_harmonic",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-harmonic.json",
  background = "dark",
  black = Color:new({ hex = "#0b1c2c" }),
  red = Color:new({ hex = "#bf8b56" }),
  green = Color:new({ hex = "#56bf8b" }),
  yellow = Color:new({ hex = "#8bbf56" }),
  blue = Color:new({ hex = "#8b56bf" }),
  magenta = Color:new({ hex = "#bf568b" }),
  cyan = Color:new({ hex = "#568bbf" }),
  white = Color:new({ hex = "#cbd6e2" }),
  bright_black = Color:new({ hex = "#627e99" }),
  bright_red = Color:new({ hex = "#bf8b56" }),
  bright_green = Color:new({ hex = "#56bf8b" }),
  bright_yellow = Color:new({ hex = "#8bbf56" }),
  bright_blue = Color:new({ hex = "#8b56bf" }),
  bright_magenta = Color:new({ hex = "#bf568b" }),
  bright_cyan = Color:new({ hex = "#568bbf" }),
  bright_white = Color:new({ hex = "#f7f9fb" }),
}

-- vim:filetype=lua
