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
  black = Color:new({ hexcode = "#f3f4f4" }),
  red = Color:new({ hexcode = "#c6006a" }),
  green = Color:new({ hexcode = "#34b56e" }),
  yellow = Color:new({ hexcode = "#fde9a2" }),
  blue = Color:new({ hexcode = "#1b009a" }),
  magenta = Color:new({ hexcode = "#82868a" }),
  cyan = Color:new({ hexcode = "#34b9b9" }),
  white = Color:new({ hexcode = "#101010" }),
  bright_black = Color:new({ hexcode = "#a9aeb3" }),
  bright_red = Color:new({ hexcode = "#c6006a" }),
  bright_green = Color:new({ hexcode = "#71984f" }),
  bright_yellow = Color:new({ hexcode = "#fde9a2" }),
  bright_blue = Color:new({ hexcode = "#3b7e9a" }),
  bright_magenta = Color:new({ hexcode = "#82868a" }),
  bright_cyan = Color:new({ hexcode = "#2e8f9f" }),
  bright_white = Color:new({ hexcode = "#2c2d2e" }),
}

---vim:filetype=lua
