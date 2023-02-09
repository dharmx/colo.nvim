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
local config = require("telescope.config")

local util = require("telescope._extensions.colo.util")
local action_state = require("telescope.actions.state")
local previewer = require("telescope._extensions.colo.preview")
local colo_api = require("colo.api")

local defaults = require("colo.config")._CURRENT.telescope

local function setup(opts) defaults = vim.tbl_deep_extend("force", defaults, vim.F.if_nil(opts, {})) end

local function choose_theme(opts)
  opts = vim.tbl_deep_extend("keep", vim.F.if_nil(opts, {}), defaults)
  pickers
    .new(opts, {
      prompt_title = "Colo Themes",
      finder = finders.new_table(util.entries(opts)),
      sorter = config.values.generic_sorter(opts),
      previewer = previewer.new(opts),
      attach_mappings = function(buffer)
        actions.select_default:replace(function()
          actions.close(buffer)
          colo_api.theme.set(action_state.get_selected_entry().value)
        end)
        return true
      end,
    })
    :find()
end

return telescope.register_extension({
  setup = setup,
  exports = {
    colo = choose_theme,
  },
})
