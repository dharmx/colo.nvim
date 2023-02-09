local utils = require("telescope.utils")
local view = require("telescope.previewers")
local colo_api = require("colo.api")
local A = vim.api

local TEMPLATE = {
  [[---@type table<string>]],
  [[local page_file_names = colo.theme.list({]],
  [[  operation = "all",]],
  [[  maphook = function(filename)]],
  [[    return "./pages/" .. vim.fn.fnamemodify(filename, ":r") .. ".html"]],
  [[  end,]],
  [[})]],
  [[]],
  [[for index, _ in ipairs(page_file_names) do]],
  [[  local page_file = io.open(page_file_names[index], "w")]],
  [[  if page_file then -- For some reason this throws warnings.]],
  [[    page_file:write(pages[index])]],
  [[    page_file:close()]],
  [[  end]],
  [[end]],
  [[]],
  [[
}

local ThemePreview = utils.make_default_callable(function()
  local theme = vim.g.colors_name
  return view.new({
    title = "Theme",
    preview_fn = function(_, entry, status)
      local buffer = status.preview_bufnr
      if A.nvim_buf_is_valid(buffer) then
        A.nvim_buf_set_option(buffer, "filetype", "lua")
        A.nvim_buf_set_lines(buffer, 0, -1, false, TEMPLATE)
      end
      colo_api.theme.set(entry.value)
    end,
    teardown = function() colo_api.theme.set(theme) end,
  })
end)

return ThemePreview
