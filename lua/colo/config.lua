local M = {}

---@class ColoMapping
---@field mode string
---@field key string
---@field action string|function
---@field opts table

---@class ColoAggregate
---@field bold boolean Enable
---@field undercurl boolean
---@field underline boolean
---@field italic boolean
---@field transparent boolean

---@class ColoConfig
---@field theme string A builtin/user-defined colo theme.
---@field skip_extension_load boolean If true then do not load the extensions when colo runs |colo.setup|. Vice-versa.
---@field notifications boolean If true then show a floating window on each theme change.
---@field inverted boolean Invert all highlights on setup.
---@field logging integer Same as |vim.log.levels|.
---@field mappings {enable:boolean,items:ColoMapping[]} Items will be passed onto |vim.keymap.set()|.
---@field reload {enable:boolean,items:string[]} Items (module paths) will be re-cached when the theme is changed.
---@field exclude string[] patterns that will hide the themes that match, from the list of themes.
---@field aggregates {enable:boolean,items:ColoAggregate}

---The main configuration table that is used to store initial states, internal states and default states.
---@type ColoConfig
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
  extra_highlights = {
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

---@type ColoConfig
M._DEFAULTS = _DEFAULTS
---@type ColoConfig
M._CURRENT = M._DEFAULTS

M._PRIVATE = {}

function M.set(opts) M._CURRENT = vim.tbl_deep_extend("force", vim.deepcopy(M._CURRENT), vim.F.if_nil(opts, {})) end

return M
