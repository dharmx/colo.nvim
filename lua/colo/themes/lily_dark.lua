---@module "colo.themes.lily_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "alyssa-sudo",
  name = "lily",
  description = "The Lily Terminal colorscheme.",
  source = "https://github.com/alyssa-sudo/lily-colorscheme",
  background = "dark",
  black = Color:new({ hex = "#2B2839" }),
  red = Color:new({ hex = "#D7757D" }),
  green = Color:new({ hex = "#97BAA3" }),
  yellow = Color:new({ hex = "#C0A496" }),
  blue = Color:new({ hex = "#92ADE3" }),
  magenta = Color:new({ hex = "#AB85D1" }),
  cyan = Color:new({ hex = "#C28EBE" }),
  white = Color:new({ hex = "#D5D1EB" }),
  bright_black = Color:new({ hex = "#9D97BF" }),
  bright_red = Color:new({ hex = "#EFC8CB" }),
  bright_green = Color:new({ hex = "#D5E3DA" }),
  bright_yellow = Color:new({ hex = "#E6DCD6" }),
  bright_blue = Color:new({ hex = "#D3DEF4" }),
  bright_magenta = Color:new({ hex = "#DDCEEC" }),
  bright_cyan = Color:new({ hex = "#E6D1E4" }),
  bright_white = Color:new({ hex = "#EEEDF7" }),
}

-- vim:filetype=lua
