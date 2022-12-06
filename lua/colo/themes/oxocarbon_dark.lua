---@module "colo.colors.oxocarbon_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "shaunsingh",
  name = "oxocarbon",
  description = "A dark theme. Inspired by IBM Carbon.",
  source = "https://github.com/shaunsingh/oxocarbon.nvim",
  background = "dark",
  black = Color:new({ hexcode = "#161616" }),
  red = Color:new({ hexcode = "#FF7EB6" }),
  green = Color:new({ hexcode = "#3CD149" }),
  yellow = Color:new({ hexcode = "#FFAB91" }),
  blue = Color:new({ hexcode = "#82CFFF" }),
  magenta = Color:new({ hexcode = "#BE95FF" }),
  cyan = Color:new({ hexcode = "#08BDBA" }),
  white = Color:new({ hexcode = "#DDE1E6" }),
  bright_black = Color:new({ hexcode = "#393939" }),
  bright_red = Color:new({ hexcode = "#EE5396" }),
  bright_green = Color:new({ hexcode = "#42BE65" }),
  bright_yellow = Color:new({ hexcode = "#FF6F00" }),
  bright_blue = Color:new({ hexcode = "#33B1FF" }),
  bright_magenta = Color:new({ hexcode = "#78A9FF" }),
  bright_cyan = Color:new({ hexcode = "#3DDBD9" }),
  bright_white = Color:new({ hexcode = "#F2F4F8" }),
}

---vim:filetype=lua
