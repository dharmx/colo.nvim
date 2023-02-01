---@module "colo.config"
---@author dharmx
---@license GPL-3.0

---@alias ColoConfig {theme:string,cycle:{enable:boolean},manual:boolean,notifications:boolean,inverted:boolean,logging:DEBUG|ERROR|INFO|TRACE|WARN|OFF,mappings:{enable:boolean,items:{mode:string,key:string,action:function|string,options:table<string,boolean>}[]},reload:{enable:boolean,items:table<string>},aggregates:{enable:boolean,items:{italic:boolean,bold:boolean,undercurl:boolean,underline:boolean,transparent:boolean}},filetypes:{enable:boolean,initial:boolean,items:table<string,string>},custom_hl:{enable:boolean,items:table<string,table<string,boolean|number|string>>},presets:{enable:boolean,items:{italic_comments:boolean,dotted_spell:boolean,contrast:boolean}},telescope:table}

local M = {}

-- TODO: Allow functions too.
---The evergrowing default configuration.
---@type ColoConfig
local _DEFAULTS = {
  -- Neovim theme.
  theme = "radium_dark",
  ---Enable theme cycles and history tracking. This will keep track of previous and next themes
  ---so you can switch back and forth between them.
  cycle = { enable = false },
  ---Skip loading extensions when colo is first loaded i.e. only set the colorscheme.
  manual = false,
  ---TODO: Allow showing a dialog stating facts and information about the theme.
  notifications = false,
  ---Set the inverted version of the theme.
  ---WARN: This will not change the source colors itself. It will only change the current highlights.
  ---      So, if one decides to import colors from the theme after inversion then the imported colors
  ---      would not be inverted.
  inverted = false,
  ---Developer option that prints error and info messages for logging and monitoring.
  ---TODO: Allow functions too.
  logging = vim.log.levels.OFF,
  ---This sets mappings. Note that mappings.items is just a table that passes values through |vim.keymap.set()|
  mappings = {
    enable = false,
    items = {
      { mode = "n", key = ";a", action = vim.cmd.ColoPrevious, options = { silent = true } },
      { mode = "n", key = ";s", action = vim.cmd.ColoInvert, options = { silent = true } },
      { mode = "n", key = ";d", action = vim.cmd.ColoNext, options = { silent = true } },
      { mode = "n", key = "<leader>t", action = vim.cmd.ColoTele, options = { silent = true } },
    },
  },
  ---Configure builtin extension and your own custom extensions.
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
  ---Add, remove and toggle font styles for some specific highlights.
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
  ---TODO: Do not require the following files from plugin_path .. "/lua/colo/groups/{base,integration,override,syntax}"
  blacklists = {
    enable = false,
    items = {
      "integration.nui",
      "base.spell",
    },
  },
  ---Extra highlights. These will be sourced after overrides.
  custom_hl = {
    enable = false,
    ---TODO: Allow functions too.
    items = {
      LspDiagnosticsSignWarn = { link = "DevIconHtm" },
      LspDiagnosticsSignError = { link = "DevIconJava" },
      LspDiagnosticsSignInfo = { link = "DevIconCobol" },
      LspDiagnosticsSignHint = { link = "DevIconMaterial" },
    },
  },
  ---Sets colorschemes for specific filetypes.
  filetypes = {
    enable = false,
    inital = false,
    items = {
      ["*.py"] = "nord_dark",
      ["*.lua"] = "mountain_dark",
      ["*.c"] = "oxocarbon_dark",
    },
  },
  ---Special style options.
  presets = {
    enable = false,
    items = {
      italic_comments = false,
      dotted_spell = false,
      contrast = false,
    },
  },
  ---Options regarding the telescope theme picker.
  telescope = {
    theme = "ivy",
    separator = "┃  ",
    exclude = {},
    ---Highlights for theme categories and variants.
    highlights = {
      ---Normal results text.
      name = "NONE",
      ---Theme variant color marking.
      background = {
        dark = "@debug",
        light = "@label",
      },
      ---Theme category color marking.
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
  _private = {},
}

M._DEFAULTS = _DEFAULTS
M.current = M._DEFAULTS

---@param options ColoConfig?
function M.set(options) M.current = vim.tbl_deep_extend("force", vim.deepcopy(M.current), vim.F.if_nil(options, {})) end

return M

---vim:filetype=lua
