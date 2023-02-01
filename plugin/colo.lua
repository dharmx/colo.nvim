if vim.version().minor < 8 then
  vim.api.nvim_notify("nvim-colo requires at least nvim-0.8.0.", vim.log.levels.ERROR, {
    icon = "!",
    title = "nvim-colo",
  })
  return
end

if vim.g.loaded_colo == 1 then return end
vim.g.loaded_colo = 1

local cmd = vim.api.nvim_create_user_command

cmd("Colo", function(...)
  local args = (...).args
  if args == "" then
    local col = require("colo.api").theme.current()
    local author = col.author
    if type(author) == "table" then
      if #author < 3 then
        author = table.concat(author, " and ")
      else
        author = table.concat(author, ", ", 1, #author - 1) .. " and " .. author[#author]
      end
    end
    local pretty = ("%s %s\nBy %s\n%s"):format(col.name:upper(), col.background:upper(), author, col.description)
    vim.api.nvim_notify(pretty, vim.log.levels.INFO, {
      title = "nvim-colo",
      icon = " ",
    })
  else
    require("colo.api").theme.set(args)
  end
end, {
  desc = "Theme switching command.",
  nargs = "?",
  complete = function()
    return require("colo.api").theme.list({
      operation = "all",
    })
  end,
})

cmd("ColoInvert", function(...)
  local colo_api = require("colo.api")
  local args = (...).fargs
  if #args ~= 0 then colo_api.theme.set(args[1]) end
  colo_api.theme.invert()
end, {
  desc = "Invert a theme.",
  nargs = "?",
  complete = function()
    return require("colo.api").theme.list({
      operation = "all",
    })
  end,
})

cmd("ColoClean", function() require("colo.api").theme.clean() end, {
  desc = "Remove all highlights.",
  nargs = 0,
})

cmd("ColoAdd", function(...) require("colo.api").aggregate.add((...).fargs) end, {
  desc = "Make selected highlights transparent/strong/italicized/undercurled/underlined.",
  nargs = "*",
  complete = function() return require("colo.api").aggregate.categories end,
})

cmd("ColoToggle", function(...) require("colo.api").aggregate.toggle((...).fargs) end, {
  desc = "Make selected highlights transparent/strong/italicized/undercurled/underlined if they aren't. Do the opposite otherwise.",
  nargs = "*",
  complete = function() return require("colo.api").aggregate.categories end,
})

cmd("ColoRemove", function(...) require("colo.api").aggregate.remove((...).fargs) end, {
  desc = "Make selected highlights not transparent/strong/italicized/undercurled/underlined.",
  nargs = "*",
  complete = function() return require("colo.api").aggregate.categories end,
})

cmd("ColoTele", function() require("telescope").extensions.colo.colo() end, {
  desc = "Theme picker.",
  nargs = 0,
})

cmd("ColoKindGLazeToggle", function() require("colo.preset").kind_glaze_toggle() end, {
  desc = "Swap background with foreground for nvim-cmp kind and make the icons glow.",
  nargs = 0,
})

cmd("ColoKindSwapToggle", function() require("colo.preset").kind_swap_toggle() end, {
  desc = "Swap background with foreground for nvim-cmp kind.",
  nargs = 0,
})

-- vim:filetype=lua
