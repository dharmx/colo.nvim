---@module "colo.themes.serenade_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "b4skyx",
  name = "serenade",
  description = "A dark colorscheme for my colorblind eyes...",
  source = "https://github.com/b4skyx/serenade",
  background = "dark",
  black = Color:new({ hexcode = "#2A2F33" }),
  red = Color:new({ hexcode = "#d76e6e" }),
  green = Color:new({ hexcode = "#ACB765" }),
  yellow = Color:new({ hexcode = "#c1bf89" }),
  blue = Color:new({ hexcode = "#82abbc" }),
  magenta = Color:new({ hexcode = "#d39bb6" }),
  cyan = Color:new({ hexcode = "#87c095" }),
  white = Color:new({ hexcode = "#bfddb2" }),
  bright_black = Color:new({ hexcode = "#2E3338" }),
  bright_red = Color:new({ hexcode = "#e5a46b" }),
  bright_green = Color:new({ hexcode = "#ACB765" }),
  bright_yellow = Color:new({ hexcode = "#614b51" }),
  bright_blue = Color:new({ hexcode = "#415c6d" }),
  bright_magenta = Color:new({ hexcode = "#7f868c" }),
  bright_cyan = Color:new({ hexcode = "#87c095" }),
  bright_white = Color:new({ hexcode = "#9aa1a8" }),
}

---vim:filetype=lua
