local M = {}

local _DEFAULTS = {
  theme = "radium_dark",
  skip_extension_load = false,
  notifications = false,
  inverted = false,
  logging = vim.log.levels.OFF,
  mappings = {
    enable = false,
    items = {
      { mode = "n", key = ";a", action = vim.cmd.ColoPrev, opts = { silent = true } },
      { mode = "n", key = ";s", action = vim.cmd.ColoInv, opts = { silent = true } },
      { mode = "n", key = ";d", action = vim.cmd.ColoNext, opts = { silent = true } },
      { mode = "n", key = "<leader>t", action = vim.cmd.ColoTele, opts = { silent = true } },
    },
  },
  reload = {
    enable = false,
    items = {},
  },
  exclude = {
    "^sexy_",
    "^tempus_",
    "^base16_",
    "^dkeg_",
    "^stardew_",
    "^decay_",
    "^hybrid_",
    "^3024_",
    "^base16tooth_",
    "^darktooth_",
    "light$",
    "^gruvbox_",
    "^vscode_",
    "^monokai_",
    "^solarized_",
  },
  aggregates = {
    enable = false,
    items = {
      bold = false,
      undercurl = false,
      underline = false,
      italic = false,
      transparent = false,
    },
  },
  blacklists = {
    enable = false,
    items = {
      "colo.groups.syntax.treesitter",
    },
  },
  custom_hl = {
    enable = false,
    items = {
      LspDiagnosticsSignWarn = { link = "DevIconHtm" },
      LspDiagnosticsSignError = { link = "DevIconJava" },
      LspDiagnosticsSignInfo = { link = "DevIconCobol" },
      LspDiagnosticsSignHint = { link = "DevIconMaterial" },
    },
  },
  telescope = {
    theme = "ivy",
    separator = "┃  ",
    exclude = {},
    highlights = {
      name = "NONE",
      background = {
        dark = "@debug",
        light = "@label",
      },
      pack = {
        ["base16"] = "Operator",
        ["single"] = "Directory",
        ["sexy"] = "Keyword",
        ["decay"] = "Question",
        ["dkeg"] = "Macro",
        ["stardew"] = "Number",
        ["hybrid"] = "Todo",
        ["tempus"] = "Float",
      },
    },
  },
}

M._DEFAULTS = _DEFAULTS
M.current = M._DEFAULTS
M._PRIVATE = {}

function M.set(opts) M.current = vim.tbl_deep_extend("force", vim.deepcopy(M.current), vim.F.if_nil(opts, {})) end

return M

-- vim:filetype=lua
