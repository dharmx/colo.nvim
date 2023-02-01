---@module "colo.themes.meliora_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "ramojus",
  name = "meliora",
  description = "Pleasant and productive colorscheme for Neovim.",
  source = "https://github.com/ramojus/mellifluous.nvim",
  background = "light",
  black = Color:new({ hexcode = "#D1D1CD" }),
  red = Color:new({ hexcode = "#AF5F5F" }),
  green = Color:new({ hexcode = "#87875F" }),
  yellow = Color:new({ hexcode = "#AF5F00" }),
  blue = Color:new({ hexcode = "#8AABAC" }),
  magenta = Color:new({ hexcode = "#AC8AAC" }),
  cyan = Color:new({ hexcode = "#8AAC8B" }),
  white = Color:new({ hexcode = "#0F0F0F " }),
  bright_black = Color:new({ hexcode = "#DFDFAF" }),
  bright_red = Color:new({ hexcode = "#875F5F" }),
  bright_green = Color:new({ hexcode = "#87875F" }),
  bright_yellow = Color:new({ hexcode = "#AF875F" }),
  bright_blue = Color:new({ hexcode = "#8F8AAC" }),
  bright_magenta = Color:new({ hexcode = "#AF8787" }),
  bright_cyan = Color:new({ hexcode = "#8AAC8B" }),
  bright_white = Color:new({ hexcode = "#0F0F0F" }),
}

---vim:filetype=lua
