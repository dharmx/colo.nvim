---Minimal init file to run Feline with the most basic functionality
---Run from Feline top-level directory using:
---nvim --noplugin -u minimal.lua

---export env before you run the command
local TMPDIR = os.getenv("COLO_DEBUG_TEMPDIR")

local function load_plugins()
  local packer = require("packer")
  local use = packer.use

  packer.reset()
  packer.init({
    package_root = TMPDIR .. "/nvim/site/pack",
    git = {
      clone_timeout = -1,
    },
  })

  use("wbthomason/packer.nvim")
  use({
    "dharmx/nvim-colo",
    branch = "dev",
    requires = {
      "nvim-lua/plenary.nvim",
      "feline-nvim/feline.nvim",
      "akinsho/bufferline.nvim",
      "lewis6991/gitsigns.nvim",
      "kyazdani42/nvim-web-devicons",
      "goolord/alpha-nvim",
    },
  })

  packer.sync()
end

local function load_config()
  vim.o.termguicolors = true
  vim.o.colorcolumn = "120"
  vim.o.number = true

  require("gitsigns").setup({
    signs = {
      add = {
        hl = "GitSignsAdd",
        text = "▌",
        numhl = "GitSignsAddNr",
        linehl = "GitSignsAddLn",
      },
      change = {
        hl = "GitSignsChange",
        text = "▌",
        numhl = "GitSignsChangeNr",
        linehl = "GitSignsChangeLn",
      },
      delete = {
        hl = "GitSignsDelete",
        text = " ",
        numhl = "GitSignsDeleteNr",
        linehl = "GitSignsDeleteLn",
      },
      topdelete = {
        hl = "GitSignsDelete",
        text = " ",
        numhl = "GitSignsDeleteNr",
        linehl = "GitSignsDeleteLn",
      },
      changedelete = {
        hl = "GitSignsChange",
        text = "",
        numhl = "GitSignsChangeNr",
        linehl = "GitSignsChangeLn",
      },
    },
    signcolumn = true,
    numhl = true,
  })

  require("colo").setup({
    theme = "radium_dark",
    cycle = true,
    notifications = {
      enable = true,
      options = {},
    },
    filetype = {
      enable = true,
      items = {
        ["*.python"] = "nord_dark",
        ["*.lua"] = "mountain_dark",
        ["*.cpp"] = "oxocarbon_dark",
      },
    },
    presets = {
      enable = true,
      items = {
        italic_comments = true,
        dotted_spell = true,
        transparent_ui = false,
        contrast = false,
        visible_borders = true,
        transparent_statusline = true,
        transparent_tabline = true,
        transparent_winbar = false,
        transparent_floatwin = true,
      },
    },
    aggregates = {
      bold = true,
      undercurl = true,
      underline = true,
      italic = true,
    },
    blacklists = {
      enable = true,
      items = {
        "integration.nui",
        "base.spell",
      },
    },
    custom_hl = {
      enable = true,
      items = {
        LspDiagnosticsSignWarn = { link = "DevIconHtm" },
        LspDiagnosticsSignError = { link = "DevIconJava" },
        LspDiagnosticsSignInfo = { link = "DevIconCobol" },
        LspDiagnosticsSignHint = { link = "DevIconMaterial" },
      },
    },
    manual = true,
    extensions = {
      feline = {
        enable = true,
        module = "colo.extensions.feline",
        options = {},
      },
      bufferline = {
        enable = true,
        module = "colo.extensions.bufferline",
        options = {},
      },
      devicons = {
        enable = true,
        module = "colo.extensions.devicons",
        options = {},
      },
      alpha = {
        enable = true,
        module = "colo.extensions.alpha",
        options = {},
      },
    },
    logging = vim.log.levels.OFF,
  })
end

local install_path = TMPDIR .. "/nvim/site/pack/packer/start/packer.nvim"

vim.o.packpath = TMPDIR .. "/nvim/site"
vim.g.loaded_remote_plugins = 1

if vim.fn.isdirectory(install_path) == 0 then
  vim.fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
end

load_plugins()
vim.api.nvim_create_autocmd("User", {
  callback = load_config,
  pattern = "PackerComplete",
  desc = "Load colo config after packer is loaded.",
  once = true,
})

vim.notify("Remember to remove " .. TMPDIR .. " after testing.")
vim.notify("Remember to remove the generated packer_compiled.lua after testing.")

---vim:filetype=lua
