local utils = require("telescope.utils")
local view = require("telescope.previewers")
local colo_api = require("colo.api")
local A = vim.api

local TEMPLATE = [[
---@type table<string>
local page_file_names = colo.theme.list({
  operation = "all",
  map_callback = function(filename)
    return "./pages/" .. vim.fn.fnamemodify(filename, ":r") .. ".html"
  end,
})

for index, _ in ipairs(page_file_names) do
  local page_file = io.open(page_file_names[index], "w")
  if page_file then -- For some reason this throws warnings.
    page_file:write(pages[index])
    page_file:close()
  end
end

local README = "# Themes\nAuto generated themes from nvim-colo."
local readme_file = io.open("./.github/README.md", "w")
if readme_file then
  readme_file:write(README:format(links))
  readme_file:close()
end

-- vim:filetype=lua
]]

return utils.make_default_callable(function()
  local theme = vim.g.colors_name
  return view.new({
    title = "Theme",
    preview_fn = function(_, entry, status)
      local buffer = status.preview_bufnr
      A.nvim_buf_set_lines(buffer, 0, -1, false, vim.split(TEMPLATE, "\n", { plain = true }))
      A.nvim_buf_set_option(buffer, "filetype", "lua")
      colo_api.theme.set(entry.value)
    end,
    teardown = function() colo_api.theme.set(theme) end,
  })
end)

-- vim:filetype=lua
