---@module "colo.highlights.base.ui"
---@author dharmx
---@license GPL-3.0

local col = require("colo.themes." .. vim.g.colo_theme).theme[vim.o.background]

return {
  Normal = {
    bg = col.black,
  },
}

-- vim:filetype=lua
