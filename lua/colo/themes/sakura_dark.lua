---@module "colo.themes.sakura_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "Stardust-Kyun",
  name = "sakura",
  description = "A theme from Stardust's personal dotfiles. AwesomeWM edition.",
  source = "https://github.com/stardust-kyun/dotfiles#sakura",
  background = "dark",
  black = Color:new({ hex = "#000f14" }),
  red = Color:new({ hex = "#824655" }),
  green = Color:new({ hex = "#468264" }),
  yellow = Color:new({ hex = "#827d50" }),
  blue = Color:new({ hex = "#326482" }),
  magenta = Color:new({ hex = "#645078" }),
  cyan = Color:new({ hex = "#327d7d" }),
  white = Color:new({ hex = "#a0a0b4" }),
  bright_black = Color:new({ hex = "#0a191e" }),
  bright_red = Color:new({ hex = "#824655" }),
  bright_green = Color:new({ hex = "#468264" }),
  bright_yellow = Color:new({ hex = "#827d50" }),
  bright_blue = Color:new({ hex = "#326482" }),
  bright_magenta = Color:new({ hex = "#645078" }),
  bright_cyan = Color:new({ hex = "#327d7d" }),
  bright_white = Color:new({ hex = "#a0a0b4" }),
}

---vim:filetype=lua
