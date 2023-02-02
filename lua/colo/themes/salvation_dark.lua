---@module "colo.themes.salvation_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = { "Bran", "exorcist" },
  name = "salvation",
  description = "This is salvation. Archived by exorcist minutes before its destruction.",
  source = "https://codeberg.org/exorcist/salvation-vim",
  background = "dark",
  black = Color:new({ hex = "#1f1f1f" }),
  red = Color:new({ hex = "#734541" }),
  green = Color:new({ hex = "#5c604b" }),
  yellow = Color:new({ hex = "#8f6840" }),
  blue = Color:new({ hex = "#535c5c" }),
  magenta = Color:new({ hex = "#775759" }),
  cyan = Color:new({ hex = "#6d715e" }),
  white = Color:new({ hex = "#c0b18b" }),
  bright_black = Color:new({ hex = "#4a3637" }),
  bright_red = Color:new({ hex = "#734541" }),
  bright_green = Color:new({ hex = "#63684d" }),
  bright_yellow = Color:new({ hex = "#8f6840" }),
  bright_blue = Color:new({ hex = "#535c5c" }),
  bright_magenta = Color:new({ hex = "#775759" }),
  bright_cyan = Color:new({ hex = "#585c49" }),
  bright_white = Color:new({ hex = "#978965" }),
}

-- vim:filetype=lua
