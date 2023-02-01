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
  black = Color:new({ hexcode = "#1e1e1e" }),
  red = Color:new({ hexcode = "#f44747" }),
  green = Color:new({ hexcode = "#d7ba7d" }),
  yellow = Color:new({ hexcode = "#608b4e" }),
  blue = Color:new({ hexcode = "#569cd6" }),
  magenta = Color:new({ hexcode = "#4ec9b0" }),
  cyan = Color:new({ hexcode = "#c586c0" }),
  white = Color:new({ hexcode = "#d4d4d4" }),
  bright_black = Color:new({ hexcode = "#808080" }),
  bright_red = Color:new({ hexcode = "#f44747" }),
  bright_green = Color:new({ hexcode = "#d7ba7d" }),
  bright_yellow = Color:new({ hexcode = "#608b4e" }),
  bright_blue = Color:new({ hexcode = "#569cd6" }),
  bright_magenta = Color:new({ hexcode = "#4ec9b0" }),
  bright_cyan = Color:new({ hexcode = "#c586c0" }),
  bright_white = Color:new({ hexcode = "#d4d4d4" }),
}

---vim:filetype=lua
