---@module "colo.colors.none_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "janleigh",
  name = "none",
  description = "Based around rxyhn's colorscheme.",
  source = "https://github.com/janleigh/dotfiles#art-colorscheme",
  background = "dark",
  black = Color:new({ hexcode = "#0B0F10" }),
  red = Color:new({ hexcode = "#EE6A70" }),
  green = Color:new({ hexcode = "#96D6B0" }),
  yellow = Color:new({ hexcode = "#FFB29B" }),
  blue = Color:new({ hexcode = "#7BA5DD" }),
  magenta = Color:new({ hexcode = "#CB92F2" }),
  cyan = Color:new({ hexcode = "#7FC8DB" }),
  white = Color:new({ hexcode = "#C5C8C9" }),
  bright_black = Color:new({ hexcode = "#26292A" }),
  bright_red = Color:new({ hexcode = "#CC414F" }),
  bright_green = Color:new({ hexcode = "#91E6B1" }),
  bright_yellow = Color:new({ hexcode = "#F9B27F" }),
  bright_blue = Color:new({ hexcode = "#5093E0" }),
  bright_magenta = Color:new({ hexcode = "#D79CED" }),
  bright_cyan = Color:new({ hexcode = "#58CCCE" }),
  bright_white = Color:new({ hexcode = "#B7B8B8" }),
}

---vim:filetype=lua
