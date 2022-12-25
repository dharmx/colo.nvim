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
  black = Color:new({ hexcode = "#2B2839" }),
  red = Color:new({ hexcode = "#D7757D" }),
  green = Color:new({ hexcode = "#97BAA3" }),
  yellow = Color:new({ hexcode = "#C0A496" }),
  blue = Color:new({ hexcode = "#92ADE3" }),
  magenta = Color:new({ hexcode = "#AB85D1" }),
  cyan = Color:new({ hexcode = "#C28EBE" }),
  white = Color:new({ hexcode = "#D5D1EB" }),
  bright_black = Color:new({ hexcode = "#9D97BF" }),
  bright_red = Color:new({ hexcode = "#EFC8CB" }),
  bright_green = Color:new({ hexcode = "#D5E3DA" }),
  bright_yellow = Color:new({ hexcode = "#E6DCD6" }),
  bright_blue = Color:new({ hexcode = "#D3DEF4" }),
  bright_magenta = Color:new({ hexcode = "#DDCEEC" }),
  bright_cyan = Color:new({ hexcode = "#E6D1E4" }),
  bright_white = Color:new({ hexcode = "#EEEDF7" }),
}

---vim:filetype=lua
