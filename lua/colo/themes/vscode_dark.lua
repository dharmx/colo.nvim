---@module "colo.themes.vscode_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "vscode",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/vscode.json",
  background = "dark",
  black = Color:new({ hex = "#1e1e1e" }),
  red = Color:new({ hex = "#f44747" }),
  green = Color:new({ hex = "#d7ba7d" }),
  yellow = Color:new({ hex = "#608b4e" }),
  blue = Color:new({ hex = "#569cd6" }),
  magenta = Color:new({ hex = "#4ec9b0" }),
  cyan = Color:new({ hex = "#c586c0" }),
  white = Color:new({ hex = "#d4d4d4" }),
  bright_black = Color:new({ hex = "#808080" }),
  bright_red = Color:new({ hex = "#f44747" }),
  bright_green = Color:new({ hex = "#d7ba7d" }),
  bright_yellow = Color:new({ hex = "#608b4e" }),
  bright_blue = Color:new({ hex = "#569cd6" }),
  bright_magenta = Color:new({ hex = "#4ec9b0" }),
  bright_cyan = Color:new({ hex = "#c586c0" }),
  bright_white = Color:new({ hex = "#d4d4d4" }),
}

-- vim:filetype=lua
