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
  black = Color:new({ hexcode = "#0b1c2c" }),
  red = Color:new({ hexcode = "#bf8b56" }),
  green = Color:new({ hexcode = "#56bf8b" }),
  yellow = Color:new({ hexcode = "#8bbf56" }),
  blue = Color:new({ hexcode = "#8b56bf" }),
  magenta = Color:new({ hexcode = "#bf568b" }),
  cyan = Color:new({ hexcode = "#568bbf" }),
  white = Color:new({ hexcode = "#cbd6e2" }),
  bright_black = Color:new({ hexcode = "#627e99" }),
  bright_red = Color:new({ hexcode = "#bf8b56" }),
  bright_green = Color:new({ hexcode = "#56bf8b" }),
  bright_yellow = Color:new({ hexcode = "#8bbf56" }),
  bright_blue = Color:new({ hexcode = "#8b56bf" }),
  bright_magenta = Color:new({ hexcode = "#bf568b" }),
  bright_cyan = Color:new({ hexcode = "#568bbf" }),
  bright_white = Color:new({ hexcode = "#f7f9fb" }),
}

---vim:filetype=lua
