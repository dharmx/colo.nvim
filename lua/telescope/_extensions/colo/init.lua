---@module "telescope._extensions.colo"
---@author dharmx
---@license GPL-3.0

local present, telescope = pcall(require, "telescope")

if not present then
  vim.api.nvim_notify("This plugin requires nvim-telescope/telescope.nvim.", vim.log.levels.ERROR, {
    icon = "!",
    title = "nvim-colo",
  })
  return
end

local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local actions = require("telescope.actions")
local previewers = require("telescope.previewers")

local config = require("telescope.config")
local util = require("telescope._extensions.colo.util")

local action_state = require("telescope.actions.state")
local entry_display = require("telescope.pickers.entry_display")
local preview_util = require("telescope.previewers.utils")

local filetype = require("plenary.filetype")
local reload = require("plenary.reload")

local colo_api = require("colo.api")
local colo_util = require("colo.util")
local colo = require("colo")

local api = vim.api
local defaults

local function setup(options)
  options = vim.F.if_nil(options, {})
  defaults = vim.tbl_deep_extend("force", defaults, options)
end

-- stylua: ignore start
local function choose_theme(options)
  options = vim.tbl_deep_extend("keep", vim.F.if_nil(options, {}), defaults)
  pickers.new(options, {
    prompt_title = "Colo Themes",
    finder = finders.new_table(util.entries(options)),
    sorter = config.values.generic_sorter(options),
    attach_mappings = function(buffer)
      actions.select_default:replace(function()
        actions.close(buffer)
        colo_api.theme.set(action_state.get_selected_entry().value)
        colo_api.extension.reload_all()
      end)
      return true
    end,
    previewer = previewers.buffer_previewer_maker({
      define_preview = function(self, entry)
        vim.notify(vim.inspect(self))
        vim.notify(vim.inspect(entry))
      end,
    }),
  }):find()
end
-- stylua: ignore end

return telescope.register_extension({
  setup = setup,
  exports = {
    colo = choose_theme,
  },
})

---vim:filetype=lua
