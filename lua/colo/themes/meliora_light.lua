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
  black = Color:new({ hex = "#D1D1CD" }),
  red = Color:new({ hex = "#AF5F5F" }),
  green = Color:new({ hex = "#87875F" }),
  yellow = Color:new({ hex = "#AF5F00" }),
  blue = Color:new({ hex = "#8AABAC" }),
  magenta = Color:new({ hex = "#AC8AAC" }),
  cyan = Color:new({ hex = "#8AAC8B" }),
  white = Color:new({ hex = "#0F0F0F " }),
  bright_black = Color:new({ hex = "#DFDFAF" }),
  bright_red = Color:new({ hex = "#875F5F" }),
  bright_green = Color:new({ hex = "#87875F" }),
  bright_yellow = Color:new({ hex = "#AF875F" }),
  bright_blue = Color:new({ hex = "#8F8AAC" }),
  bright_magenta = Color:new({ hex = "#AF8787" }),
  bright_cyan = Color:new({ hex = "#8AAC8B" }),
  bright_white = Color:new({ hex = "#0F0F0F" }),
}

---vim:filetype=lua
