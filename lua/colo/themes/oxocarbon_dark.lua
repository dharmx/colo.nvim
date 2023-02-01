---@module "colo.themes.oxocarbon_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "shaunsingh",
  name = "oxocarbon",
  description = "A dark theme. Inspired by IBM Carbon.",
  source = "https://github.com/shaunsingh/oxocarbon.nvim",
  background = "dark",
  black = Color:new({ hex = "#161616" }),
  red = Color:new({ hex = "#FF7EB6" }),
  green = Color:new({ hex = "#3CD149" }),
  yellow = Color:new({ hex = "#FFAB91" }),
  blue = Color:new({ hex = "#82CFFF" }),
  magenta = Color:new({ hex = "#BE95FF" }),
  cyan = Color:new({ hex = "#08BDBA" }),
  white = Color:new({ hex = "#DDE1E6" }),
  bright_black = Color:new({ hex = "#393939" }),
  bright_red = Color:new({ hex = "#EE5396" }),
  bright_green = Color:new({ hex = "#42BE65" }),
  bright_yellow = Color:new({ hex = "#FF6F00" }),
  bright_blue = Color:new({ hex = "#33B1FF" }),
  bright_magenta = Color:new({ hex = "#78A9FF" }),
  bright_cyan = Color:new({ hex = "#3DDBD9" }),
  bright_white = Color:new({ hex = "#F2F4F8" }),
}

---vim:filetype=lua
