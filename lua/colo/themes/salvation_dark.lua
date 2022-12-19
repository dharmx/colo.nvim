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
  black = Color:new({ hexcode = "#1f1f1f" }),
  red = Color:new({ hexcode = "#734541" }),
  green = Color:new({ hexcode = "#5c604b" }),
  yellow = Color:new({ hexcode = "#8f6840" }),
  blue = Color:new({ hexcode = "#535c5c" }),
  magenta = Color:new({ hexcode = "#775759" }),
  cyan = Color:new({ hexcode = "#6d715e" }),
  white = Color:new({ hexcode = "#c0b18b" }),
  bright_black = Color:new({ hexcode = "#4a3637" }),
  bright_red = Color:new({ hexcode = "#734541" }),
  bright_green = Color:new({ hexcode = "#63684d" }),
  bright_yellow = Color:new({ hexcode = "#8f6840" }),
  bright_blue = Color:new({ hexcode = "#535c5c" }),
  bright_magenta = Color:new({ hexcode = "#775759" }),
  bright_cyan = Color:new({ hexcode = "#585c49" }),
  bright_white = Color:new({ hexcode = "#978965" }),
}

---vim:filetype=lua
