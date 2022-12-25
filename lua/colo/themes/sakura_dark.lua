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
  black = Color:new({ hexcode = "#000f14" }),
  red = Color:new({ hexcode = "#824655" }),
  green = Color:new({ hexcode = "#468264" }),
  yellow = Color:new({ hexcode = "#827d50" }),
  blue = Color:new({ hexcode = "#326482" }),
  magenta = Color:new({ hexcode = "#645078" }),
  cyan = Color:new({ hexcode = "#327d7d" }),
  white = Color:new({ hexcode = "#a0a0b4" }),
  bright_black = Color:new({ hexcode = "#0a191e" }),
  bright_red = Color:new({ hexcode = "#824655" }),
  bright_green = Color:new({ hexcode = "#468264" }),
  bright_yellow = Color:new({ hexcode = "#827d50" }),
  bright_blue = Color:new({ hexcode = "#326482" }),
  bright_magenta = Color:new({ hexcode = "#645078" }),
  bright_cyan = Color:new({ hexcode = "#327d7d" }),
  bright_white = Color:new({ hexcode = "#a0a0b4" }),
}

---vim:filetype=lua
