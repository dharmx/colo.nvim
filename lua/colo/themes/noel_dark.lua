---@module "colo.themes.noel"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = { "Stardust-Kyun", "Jimmysit0" },
  name = "noel",
  description = "A theme from Stardust's personal dotfiles. OpenBox edition.",
  source = { "https://github.com/Jimmysit0", "" },
  background = "dark",
  black = Color:new({ hexcode = "#403B47" }),
  red = Color:new({ hexcode = "#CE9C97" }),
  green = Color:new({ hexcode = "#B6A4A0" }),
  yellow = Color:new({ hexcode = "#D1AD8D" }),
  blue = Color:new({ hexcode = "#B9B9C4" }),
  magenta = Color:new({ hexcode = "#B68F95" }),
  cyan = Color:new({ hexcode = "#675D72" }),
  white = Color:new({ hexcode = "#E8D4CF" }),
  bright_black = Color:new({ hexcode = "#5C5566" }),
  bright_red = Color:new({ hexcode = "#CE9C97" }),
  bright_green = Color:new({ hexcode = "#B6A4A0" }),
  bright_yellow = Color:new({ hexcode = "#D1AD8D" }),
  bright_blue = Color:new({ hexcode = "#B9B9C4" }),
  bright_magenta = Color:new({ hexcode = "#B68F95" }),
  bright_cyan = Color:new({ hexcode = "#675D72" }),
  bright_white = Color:new({ hexcode = "#E8D4CF" }),
}

---vim:filetype=lua
