---@module "colo.themes.meliora_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "ramojus",
  name = "meliora",
  description = "Pleasant and productive colorscheme for Neovim.",
  source = "https://github.com/ramojus/mellifluous.nvim",
  background = "dark",
  black = Color:new({ hex = "#0f0f0f" }),
  red = Color:new({ hex = "#AF5F5F" }),
  green = Color:new({ hex = "#87875F" }),
  yellow = Color:new({ hex = "#C6A679" }),
  blue = Color:new({ hex = "#8AABAC" }),
  magenta = Color:new({ hex = "#AC8AAC" }),
  cyan = Color:new({ hex = "#8AAC8B" }),
  white = Color:new({ hex = "#D1D1CD" }),
  bright_black = Color:new({ hex = "#0f0f0f" }),
  bright_red = Color:new({ hex = "#875F5F" }),
  bright_green = Color:new({ hex = "#87875F" }),
  bright_yellow = Color:new({ hex = "#DFAF87" }),
  bright_blue = Color:new({ hex = "#8F8AAC" }),
  bright_magenta = Color:new({ hex = "#AC8A8C" }),
  bright_cyan = Color:new({ hex = "#8AAC8B" }),
  bright_white = Color:new({ hex = "#ACA98A" }),
}

-- vim:filetype=lua
