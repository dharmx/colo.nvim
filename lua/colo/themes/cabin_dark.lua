---@module "colo.themes.cabin_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = { "Stardust-Kyun", "Bran", "Jimmysit0", "exorcist" },
  name = "cabin",
  description = "A theme from Stardust's personal dotfiles. OpenBox edition. This was derived from salvation_dark.",
  source = {
    "https://github.com/Stardust-kyun/dotfiles/blob/main/home/.config/awesome/themes/colors/old/cabin/init.lua",
    "https://codeberg.org/exorcist/salvation-vim",
    "https://github.com/Jimmysit0",
  },
  background = "dark",
  black = Color:new({ hex = "#201e1a" }),
  red = Color:new({ hex = "#674441" }),
  green = Color:new({ hex = "#5d6051" }),
  yellow = Color:new({ hex = "#84694e" }),
  blue = Color:new({ hex = "#545e5e" }),
  magenta = Color:new({ hex = "#614c4c" }),
  cyan = Color:new({ hex = "#4d5c5c" }),
  white = Color:new({ hex = "#867564" }),
  bright_black = Color:new({ hex = "#443a36" }),
  bright_red = Color:new({ hex = "#674441" }),
  bright_green = Color:new({ hex = "#5d6051" }),
  bright_yellow = Color:new({ hex = "#84694e" }),
  bright_blue = Color:new({ hex = "#545e5e" }),
  bright_magenta = Color:new({ hex = "#614c4c" }),
  bright_cyan = Color:new({ hex = "#4d5c5c" }),
  bright_white = Color:new({ hex = "#79695a" }),
}

-- vim:filetype=lua
