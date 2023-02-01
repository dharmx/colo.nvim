---@module "telescope._extensions.colo.util"
---@author dharmx
---@license GPL-3.0

local M = {}

local entry_display = require("telescope.pickers.entry_display")
local colo_util = require("colo.util")
local colo_config = require("colo.config").current

function M.make_entry(theme, options)
  local name_table = vim.split(theme, "_", { plain = true })
  if #name_table < 3 then table.insert(name_table, 1, "single") end

  local background = name_table[#name_table]
  local category = name_table[1]
  local name = vim.list_slice(name_table, 2, #name_table - 1)

  return {
    name = table.concat(vim.tbl_map(colo_util.str.capitalize, name), " "),
    category = category:upper(),
    background = background:upper(),
    highlights = {
      background = options.highlights.background[background],
      category = options.highlights.pack[category],
      name = options.highlights.name,
    },
  }
end

function M.entries(options)
  local themes = require("colo.api").theme.list({
    operation = "all",
  })

  return {
    results = themes,
    entry_maker = function(entry)
      local displayer = entry_display.create({
        separator = options.separator,
        items = {
          { width = 0.2 },
          { width = 0.2 },
          { width = 0.4 },
          { remaining = true },
        },
      })

      local item = M.make_entry(entry, options)
      return {
        value = entry,
        display = function()
          return displayer({
            { item.background, item.highlights.background },
            { item.category, item.highlights.category },
            { item.name, item.highlights.name },
          })
        end,
        ordinal = ("%s %s %s"):format(item.category, item.background, item.name),
      }
    end,
  }
end

return M
