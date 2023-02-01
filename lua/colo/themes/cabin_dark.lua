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
  black = Color:new({ hexcode = "#201e1a" }),
  red = Color:new({ hexcode = "#674441" }),
  green = Color:new({ hexcode = "#5d6051" }),
  yellow = Color:new({ hexcode = "#84694e" }),
  blue = Color:new({ hexcode = "#545e5e" }),
  magenta = Color:new({ hexcode = "#614c4c" }),
  cyan = Color:new({ hexcode = "#4d5c5c" }),
  white = Color:new({ hexcode = "#867564" }),
  bright_black = Color:new({ hexcode = "#443a36" }),
  bright_red = Color:new({ hexcode = "#674441" }),
  bright_green = Color:new({ hexcode = "#5d6051" }),
  bright_yellow = Color:new({ hexcode = "#84694e" }),
  bright_blue = Color:new({ hexcode = "#545e5e" }),
  bright_magenta = Color:new({ hexcode = "#614c4c" }),
  bright_cyan = Color:new({ hexcode = "#4d5c5c" }),
  bright_white = Color:new({ hexcode = "#79695a" }),
}

---vim:filetype=lua
