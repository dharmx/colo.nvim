---@module "colo.themes.javacafe_dark"
---@author dharmx, JavaCafe01
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "JavaCafe01",
  name = "javacafe",
  description = "A pastel-like colorscheme.",
  source = "https://github.com/JavaCafe01/dotfiles",
  background = "dark",
  black = Color:new({ hexcode = "#171b20" }),
  red = Color:new({ hexcode = "#f9929b" }),
  green = Color:new({ hexcode = "#7ed491" }),
  yellow = Color:new({ hexcode = "#fbdf90" }),
  blue = Color:new({ hexcode = "#a3b8ef" }),
  magenta = Color:new({ hexcode = "#ccaced" }),
  cyan = Color:new({ hexcode = "#9ce5c0" }),
  white = Color:new({ hexcode = "#dee1e6" }),
  bright_black = Color:new({ hexcode = "#21262e" }),
  bright_red = Color:new({ hexcode = "#fca2aa" }),
  bright_green = Color:new({ hexcode = "#a5d4af" }),
  bright_yellow = Color:new({ hexcode = "#fbeab9" }),
  bright_blue = Color:new({ hexcode = "#bac8ef" }),
  bright_magenta = Color:new({ hexcode = "#d7c1ed" }),
  bright_cyan = Color:new({ hexcode = "#c7e5d6" }),
  bright_white = Color:new({ hexcode = "#eaeaea" }),
}

---vim:filetype=lua
