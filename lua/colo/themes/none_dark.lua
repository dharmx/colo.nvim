---@module "colo.themes.none_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "janleigh",
  name = "none",
  description = "Based around rxyhn's colorscheme.",
  source = "https://github.com/janleigh/dotfiles#art-colorscheme",
  background = "dark",
  black = Color:new({ hex = "#0B0F10" }),
  red = Color:new({ hex = "#EE6A70" }),
  green = Color:new({ hex = "#96D6B0" }),
  yellow = Color:new({ hex = "#FFB29B" }),
  blue = Color:new({ hex = "#7BA5DD" }),
  magenta = Color:new({ hex = "#CB92F2" }),
  cyan = Color:new({ hex = "#7FC8DB" }),
  white = Color:new({ hex = "#C5C8C9" }),
  bright_black = Color:new({ hex = "#26292A" }),
  bright_red = Color:new({ hex = "#CC414F" }),
  bright_green = Color:new({ hex = "#91E6B1" }),
  bright_yellow = Color:new({ hex = "#F9B27F" }),
  bright_blue = Color:new({ hex = "#5093E0" }),
  bright_magenta = Color:new({ hex = "#D79CED" }),
  bright_cyan = Color:new({ hex = "#58CCCE" }),
  bright_white = Color:new({ hex = "#B7B8B8" }),
}

-- vim:filetype=lua
