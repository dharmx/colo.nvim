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
  black = Color:new({ hex = "#101010" }),
  red = Color:new({ hex = "#49acaa" }),
  green = Color:new({ hex = "#bd7bb5" }),
  yellow = Color:new({ hex = "#8ba2a2" }),
  blue = Color:new({ hex = "#5ca4cc" }),
  magenta = Color:new({ hex = "#4e7cc0" }),
  cyan = Color:new({ hex = "#a3b370" }),
  white = Color:new({ hex = "#cbf3f3" }),
  bright_black = Color:new({ hex = "#1c1c1c" }),
  bright_red = Color:new({ hex = "#aa3a4e" }),
  bright_green = Color:new({ hex = "#a33c3d" }),
  bright_yellow = Color:new({ hex = "#9276bd" }),
  bright_blue = Color:new({ hex = "#46a468" }),
  bright_magenta = Color:new({ hex = "#bd65b3" }),
  bright_cyan = Color:new({ hex = "#99cccc" }),
  bright_white = Color:new({ hex = "#cbf3f3" }),
}

---vim:filetype=lua
