local present, telescope = pcall(require, "telescope")

if not present then
  error("This plugin requires nvim-telescope/telescope.nvim")
end

local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local actions = require("telescope.actions")

local action_state = require("telescope.actions.state")
local entry_display = require("telescope.pickers.entry_display")
local config = require("telescope.config")
local colo = require("colo.api")

local user_config = {}
local function setup(options)
  options = vim.F.if_nil(options, {})
  user_config = vim.tbl_deep_extend("force", options, user_config)
end

local function entries()
  return {
    results = require("colo.api").theme.list({ all = true }),
    entry_maker = function(entry)
      local theme = colo.theme.get(entry)
      local tele_width = config.values.layout_config.width
      local displayer = entry_display.create({
        separator = "┃ ",
        items = {
          { width = 0.1 },
          { width = 0.4 },
          { width = 0.2 },
          { remaining = true },
        },
      })

      local function capitalize(item)
        return ("%s%s"):format(item:sub(1, 1):upper(), item:sub(2))
      end

      local name_table = vim.split(theme.name, "_")
      if #name_table < 2 then
        table.insert(name_table, 1, "ORIGIN")
      end

      local display_item = {
        name = table.concat(vim.tbl_map(capitalize, vim.list_slice(name_table, 2)), " "),
        category = name_table[1]:upper(),
        background = theme.background:upper(),
      }

      return {
        value = entry,
        display = function()
          return displayer({
            { display_item.background },
            { display_item.name },
            { display_item.category },
          })
        end,
        ordinal = ("%s %s %s"):format(display_item.category, display_item.name, display_item.background),
      }
    end,
  }
end

-- stylua: ignore start
local function choose_theme(options)
  options = vim.F.if_nil(options, {})
  pickers.new(vim.tbl_deep_extend("force", options, user_config), {
    prompt_title = "Colo Themes",
    finder = finders.new_table(entries()),
    attach_mappings = function(buffer)
      actions.select_default:replace(function()
        actions.close(buffer)
        colo.theme.set(action_state.get_selected_entry().value)
        colo.extension.load("devicons", "feline")
      end)
      return true
    end,
    sorter = config.values.generic_sorter(options),
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
