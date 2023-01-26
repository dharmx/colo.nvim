---@module "colo.themes.lucid_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "cseelus",
  name = "lucid",
  description = "A color scheme for VIM with vivid highlights and friendly, clear colors.",
  source = "https://github.com/cseelus/vim-colors-lucid",
  background = "light",
  black = Color:new({ hex = "#f3f4f4" }),
  red = Color:new({ hex = "#c6006a" }),
  green = Color:new({ hex = "#34b56e" }),
  yellow = Color:new({ hex = "#fde9a2" }),
  blue = Color:new({ hex = "#1b009a" }),
  magenta = Color:new({ hex = "#82868a" }),
  cyan = Color:new({ hex = "#34b9b9" }),
  white = Color:new({ hex = "#101010" }),
  bright_black = Color:new({ hex = "#a9aeb3" }),
  bright_red = Color:new({ hex = "#c6006a" }),
  bright_green = Color:new({ hex = "#71984f" }),
  bright_yellow = Color:new({ hex = "#fde9a2" }),
  bright_blue = Color:new({ hex = "#3b7e9a" }),
  bright_magenta = Color:new({ hex = "#82868a" }),
  bright_cyan = Color:new({ hex = "#2e8f9f" }),
  bright_white = Color:new({ hex = "#2c2d2e" }),
}

---vim:filetype=lua
