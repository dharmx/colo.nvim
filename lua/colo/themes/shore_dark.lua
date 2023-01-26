---@module "colo.themes.shore_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "Stardust-Kyun",
  name = "shore",
  description = "A theme from Stardust's personal dotfiles. AwesomeWM edition.",
  source = "https://github.com/stardust-kyun/dotfiles#shore",
  background = "dark",
  black = Color:new({ hex = "#19191E" }),
  red = Color:new({ hex = "#825A5A" }),
  green = Color:new({ hex = "#5A825A" }),
  yellow = Color:new({ hex = "#968264" }),
  blue = Color:new({ hex = "#505A82" }),
  magenta = Color:new({ hex = "#735A87" }),
  cyan = Color:new({ hex = "#5A7387" }),
  white = Color:new({ hex = "#9999A8" }),
  bright_black = Color:new({ hex = "#2B2B33" }),
  bright_red = Color:new({ hex = "#825A5A" }),
  bright_green = Color:new({ hex = "#5A825A" }),
  bright_yellow = Color:new({ hex = "#968264" }),
  bright_blue = Color:new({ hex = "#505A82" }),
  bright_magenta = Color:new({ hex = "#735A87" }),
  bright_cyan = Color:new({ hex = "#5A7387" }),
  bright_white = Color:new({ hex = "#9999A8" }),
}

---vim:filetype=lua
