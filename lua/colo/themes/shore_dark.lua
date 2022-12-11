---@module "colo.themes.shore"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "Stardust-Kyun",
  name = "shore",
  description = "A theme from Stardust's personal dotfiles. AwesomeWM edition.",
  source = "https://github.com/stardust-kyun/dotfiles#shore",
  background = "dark",
  black = Color:new({ hexcode = "#19191e" }),
  red = Color:new({ hexcode = "#825a5a" }),
  green = Color:new({ hexcode = "#5a825a" }),
  yellow = Color:new({ hexcode = "#968264" }),
  blue = Color:new({ hexcode = "#505a82" }),
  magenta = Color:new({ hexcode = "#735a87" }),
  cyan = Color:new({ hexcode = "#5a7387" }),
  white = Color:new({ hexcode = "#9999a8" }),
  bright_black = Color:new({ hexcode = "#2b2b33" }),
  bright_red = Color:new({ hexcode = "#825a5a" }),
  bright_green = Color:new({ hexcode = "#5a825a" }),
  bright_yellow = Color:new({ hexcode = "#968264" }),
  bright_blue = Color:new({ hexcode = "#505a82" }),
  bright_magenta = Color:new({ hexcode = "#735a87" }),
  bright_cyan = Color:new({ hexcode = "#5a7387" }),
  bright_white = Color:new({ hexcode = "#9999a8" }),
}

---vim:filetype=lua
