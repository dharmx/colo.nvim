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
  black = Color:new({ hexcode = "#0f0f0f" }),
  red = Color:new({ hexcode = "#AF5F5F" }),
  green = Color:new({ hexcode = "#87875F" }),
  yellow = Color:new({ hexcode = "#C6A679" }),
  blue = Color:new({ hexcode = "#8AABAC" }),
  magenta = Color:new({ hexcode = "#AC8AAC" }),
  cyan = Color:new({ hexcode = "#8AAC8B" }),
  white = Color:new({ hexcode = "#D1D1CD" }),
  bright_black = Color:new({ hexcode = "#0f0f0f" }),
  bright_red = Color:new({ hexcode = "#875F5F" }),
  bright_green = Color:new({ hexcode = "#87875F" }),
  bright_yellow = Color:new({ hexcode = "#DFAF87" }),
  bright_blue = Color:new({ hexcode = "#8F8AAC" }),
  bright_magenta = Color:new({ hexcode = "#AC8A8C" }),
  bright_cyan = Color:new({ hexcode = "#8AAC8B" }),
  bright_white = Color:new({ hexcode = "#ACA98A" }),
}

---vim:filetype=lua
