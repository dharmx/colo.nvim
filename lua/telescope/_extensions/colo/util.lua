---@module "telescope._extensions.colo.util"
---@author dharmx
---@license GPL-3.0

local M = {}

local config = require("telescope.config")
local entry_display = require("telescope.pickers.entry_display")
local Previewer = require("telescope.previewers.previewer")

local colo_api = require("colo.api")
local colo_util = require("colo.util")

local api = vim.api

function M.make_entry(theme, options)
  local name_table = vim.split(theme, "_")
  if #name_table < 3 then
    table.insert(name_table, 1, "single")
  end

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
      name = "Normal",
    },
  }
end

function M.entries(options)
  local buffer = api.nvim_get_current_buf()
  local filename = api.nvim_buf_get_name(buffer)
  local themes = require("colo.api").theme.list({
    operation = "all",
    map_callback = colo_util.canned.filenamermx,
  })

  ---@private
  local function exclude_match(item)
    for _, exclude_item in ipairs(options.exclude) do
      if item:match(exclude_item) then
        return false
      end
    end
    return true
  end

  return {
    results = vim.tbl_filter(exclude_match, themes),
    entry_maker = function(entry)
      local tele_width = config.values.layout_config.width
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
