local present, telescope = pcall(require, "telescope")

if not present then
  error("This plugin requires nvim-telescope/telescope.nvim")
end

local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local actions = require("telescope.actions")
local state = require("telescope.actions.state")
local colo = require("colo.api")

local user_config = {}
local function setup(options)
  user_config = vim.tbl_deep_extend("force", options or {}, user_config)
end

-- stylua: ignore start
local function choose_theme(options)
  pickers.new(vim.tbl_deep_extend("force", options or {}, user_config), {
    prompt_title = "Colo Themes",
    finder = finders.new_table({
      results = require("colo.api").theme.list({ all = true }),
    }),
    attach_mappings = function(buffer)
      actions.select_default:replace(function()
        actions.close(buffer)
        colo.theme.set(state.get_selected_entry()[1])
        colo.extension.load("devicons", "feline")
      end)
      return true
    end,
  }):find()
end
-- stylua: ignore end

return require("telescope").register_extension({
  setup = setup,
  exports = {
    colo = choose_theme,
  },
})

---vim:filetype=lua
