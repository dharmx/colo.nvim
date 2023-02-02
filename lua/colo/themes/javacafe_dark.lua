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
  black = Color:new({ hex = "#171b20" }),
  red = Color:new({ hex = "#f9929b" }),
  green = Color:new({ hex = "#7ed491" }),
  yellow = Color:new({ hex = "#fbdf90" }),
  blue = Color:new({ hex = "#a3b8ef" }),
  magenta = Color:new({ hex = "#ccaced" }),
  cyan = Color:new({ hex = "#9ce5c0" }),
  white = Color:new({ hex = "#dee1e6" }),
  bright_black = Color:new({ hex = "#21262e" }),
  bright_red = Color:new({ hex = "#fca2aa" }),
  bright_green = Color:new({ hex = "#a5d4af" }),
  bright_yellow = Color:new({ hex = "#fbeab9" }),
  bright_blue = Color:new({ hex = "#bac8ef" }),
  bright_magenta = Color:new({ hex = "#d7c1ed" }),
  bright_cyan = Color:new({ hex = "#c7e5d6" }),
  bright_white = Color:new({ hex = "#eaeaea" }),
}

-- vim:filetype=lua
