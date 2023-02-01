---@module "colo.themes.3024_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = { "Rasmus", "kvrohit" },
  name = "rasmus_dark",
  description = "A color scheme for Neovim written in Lua ported from rsms/sublime-theme theme.",
  source = {
    "https://github.com/kvrohit/rasmus.nvim",
    "https://github.com/rsms/sublime-theme",
  },
  background = "dark",
  black = Color:new({ hex = "#1a1a19" }),
  red = Color:new({ hex = "#ff968c" }),
  green = Color:new({ hex = "#61957f" }),
  yellow = Color:new({ hex = "#ffc591" }),
  blue = Color:new({ hex = "#8db4d4" }),
  magenta = Color:new({ hex = "#de9bc8" }),
  cyan = Color:new({ hex = "#7bb099" }),
  white = Color:new({ hex = "#d1d1d1" }),
  bright_black = Color:new({ hex = "#333332" }),
  bright_red = Color:new({ hex = "#ffafa5" }),
  bright_green = Color:new({ hex = "#7aae98" }),
  bright_yellow = Color:new({ hex = "#ffdeaa" }),
  bright_blue = Color:new({ hex = "#a6cded" }),
  bright_magenta = Color:new({ hex = "#f7b4e1" }),
  bright_cyan = Color:new({ hex = "#94c9b2" }),
  bright_white = Color:new({ hex = "#eaeaea" }),
}

---vim:filetype=lua
