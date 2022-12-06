if vim.fn.has("nvim-0.8.0") ~= 1 then
  vim.api.nvim_err_writeln("nvim-colo requires at least nvim-0.8.0.")
  return
end

if vim.g.loaded_colo == 1 then
  return
end
vim.g.loaded_colo = 1

-- vim:filetype=lua
