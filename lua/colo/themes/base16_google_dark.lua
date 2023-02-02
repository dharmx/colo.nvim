---@module "colo.themes.base16_google_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_google",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-google.json",
  background = "dark",
  black = Color:new({ hex = "#1d1f21" }),
  red = Color:new({ hex = "#CC342B" }),
  green = Color:new({ hex = "#198844" }),
  yellow = Color:new({ hex = "#FBA922" }),
  blue = Color:new({ hex = "#3971ED" }),
  magenta = Color:new({ hex = "#A36AC7" }),
  cyan = Color:new({ hex = "#3971ED" }),
  white = Color:new({ hex = "#c5c8c6" }),
  bright_black = Color:new({ hex = "#969896" }),
  bright_red = Color:new({ hex = "#CC342B" }),
  bright_green = Color:new({ hex = "#198844" }),
  bright_yellow = Color:new({ hex = "#FBA922" }),
  bright_blue = Color:new({ hex = "#3971ED" }),
  bright_magenta = Color:new({ hex = "#A36AC7" }),
  bright_cyan = Color:new({ hex = "#3971ED" }),
  bright_white = Color:new({ hex = "#ffffff" }),
}

-- vim:filetype=lua
