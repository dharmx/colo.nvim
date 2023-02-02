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
  black = Color:new({ hex = "#2A2F33" }),
  red = Color:new({ hex = "#d76e6e" }),
  green = Color:new({ hex = "#ACB765" }),
  yellow = Color:new({ hex = "#c1bf89" }),
  blue = Color:new({ hex = "#82abbc" }),
  magenta = Color:new({ hex = "#d39bb6" }),
  cyan = Color:new({ hex = "#87c095" }),
  white = Color:new({ hex = "#bfddb2" }),
  bright_black = Color:new({ hex = "#2E3338" }),
  bright_red = Color:new({ hex = "#e5a46b" }),
  bright_green = Color:new({ hex = "#ACB765" }),
  bright_yellow = Color:new({ hex = "#614b51" }),
  bright_blue = Color:new({ hex = "#415c6d" }),
  bright_magenta = Color:new({ hex = "#7f868c" }),
  bright_cyan = Color:new({ hex = "#87c095" }),
  bright_white = Color:new({ hex = "#9aa1a8" }),
}

-- vim:filetype=lua
