---@module "colo.themes.everforest_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "sainnhe",
  name = "everforest",
  description = "Comfortable & Pleasant Color Scheme for Vim.",
  source = "https://github.com/sainnhe/everforest",
  background = "dark",
  black = Color:new({ hex = "#2B3339" }),
  red = Color:new({ hex = "#E67E80" }),
  green = Color:new({ hex = "#83C092" }),
  yellow = Color:new({ hex = "#DBBC7F" }),
  blue = Color:new({ hex = "#7393B3" }),
  magenta = Color:new({ hex = "#ECAFCC" }),
  cyan = Color:new({ hex = "#7FBBB3" }),
  white = Color:new({ hex = "#D3C6AA" }),
  bright_black = Color:new({ hex = "#323C41" }),
  bright_red = Color:new({ hex = "#E69875" }),
  bright_green = Color:new({ hex = "#A7C080" }),
  bright_yellow = Color:new({ hex = "#D1B171" }),
  bright_blue = Color:new({ hex = "#7393B3" }),
  bright_magenta = Color:new({ hex = "#D699B6" }),
  bright_cyan = Color:new({ hex = "#78B4AC" }),
  bright_white = Color:new({ hex = "#DDD0B4" }),
}

---vim:filetype=lua
