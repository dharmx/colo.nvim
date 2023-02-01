---@module "colo.themes.base16_gruvbox_hard_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_gruvbox_hard",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-gruvbox-hard.json",
  background = "dark",
  black = Color:new({ hexcode = "#1d2021" }),
  red = Color:new({ hexcode = "#fb4934" }),
  green = Color:new({ hexcode = "#b8bb26" }),
  yellow = Color:new({ hexcode = "#fabd2f" }),
  blue = Color:new({ hexcode = "#83a598" }),
  magenta = Color:new({ hexcode = "#d3869b" }),
  cyan = Color:new({ hexcode = "#8ec07c" }),
  white = Color:new({ hexcode = "#d5c4a1" }),
  bright_black = Color:new({ hexcode = "#665c54" }),
  bright_red = Color:new({ hexcode = "#fb4934" }),
  bright_green = Color:new({ hexcode = "#b8bb26" }),
  bright_yellow = Color:new({ hexcode = "#fabd2f" }),
  bright_blue = Color:new({ hexcode = "#83a598" }),
  bright_magenta = Color:new({ hexcode = "#d3869b" }),
  bright_cyan = Color:new({ hexcode = "#8ec07c" }),
  bright_white = Color:new({ hexcode = "#fbf1c7" }),
}

---vim:filetype=lua
