---@module "colo.themes.houseki_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "BanchouBoo",
  name = "houseki",
  description = "A dark neovim theme.",
  source = "https://github.com/BanchouBoo/houseki.nvim",
  background = "dark",
  black = Color:new({ hexcode = "#101010" }),
  red = Color:new({ hexcode = "#49acaa" }),
  green = Color:new({ hexcode = "#bd7bb5" }),
  yellow = Color:new({ hexcode = "#8ba2a2" }),
  blue = Color:new({ hexcode = "#5ca4cc" }),
  magenta = Color:new({ hexcode = "#4e7cc0" }),
  cyan = Color:new({ hexcode = "#a3b370" }),
  white = Color:new({ hexcode = "#cbf3f3" }),
  bright_black = Color:new({ hexcode = "#1c1c1c" }),
  bright_red = Color:new({ hexcode = "#aa3a4e" }),
  bright_green = Color:new({ hexcode = "#a33c3d" }),
  bright_yellow = Color:new({ hexcode = "#9276bd" }),
  bright_blue = Color:new({ hexcode = "#46a468" }),
  bright_magenta = Color:new({ hexcode = "#bd65b3" }),
  bright_cyan = Color:new({ hexcode = "#99cccc" }),
  bright_white = Color:new({ hexcode = "#cbf3f3" }),
}

---vim:filetype=lua
