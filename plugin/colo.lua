if vim.fn.has("nvim-0.9.0") ~= 1 then
  vim.api.nvim_err_writeln("nvim-colo requires at least nvim-0.9.0.")
  return
end

if vim.g.loaded_colo == 1 then
  return
end
vim.g.loaded_colo = 1

vim.api.nvim_create_user_command("Colo", function(attributes)
  local themes = vim.split(attributes.args, " ", {
    plain = true,
    trimempty = true,
  })
  if #themes ~= 1 then
    vim.notify("Only one argument is allowed.", vim.log.levels.WARN, {})
  end
  vim.cmd.colo(themes[1])
end, {
  desc = "Theme switching command.",
  nargs = 1,
  complete = require("colo.util").list_themes,
})

-- vim:filetype=lua
