![banner](./nvim-colo.png)

<div align="center">

```txt
Theming utilities for your Neovim.
STATUS: WIP
NVIM: v0.8.0
```

</div>

> <samp>WARN: This plugin is in an early stage and docs are a bit sparse.
  Feel free to try it out though and let me know if you have
  any problems/suggestions.</samp>

> <samp>WARN: Lock a401cad1762b458332d563484c05eb149bfa7a48 and do NOT
  update. Rewrite is in progress.</samp>

<h2><samp>PACKER</samp></h2>

<samp>
Following is a very minimal configuration for colo.
Plenary is the only hard-dependency. You can opt out installing
extensions if you decide not to use them or, prefer your own configuration instead.
</samp>

```lua
use({
  "dharmx/nvim-colo",
  config = function()
    require("colo").setup()
  end,
  requires = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",    -- optional
    "nvim-lua/plenary.nvim",            -- optional
    "nvim-telescope/telescope.nvim",    -- optional
    "feline-nvim/feline.nvim",          -- optional
    "akinsho/bufferline.nvim",          -- optional
    "lewis6991/gitsigns.nvim",          -- optional
    "kyazdani42/nvim-web-devicons",     -- optional
  }
})
```

<h2><samp>CONFIG</samp></h2>

<samp>
Configuration is done by passing a table to the setup function.
The following are the default settings.
</samp>

<samp>The default configuration can be found [here](../lua/colo/config.lua).</samp>

<h3><samp>TIPS</samp></h3>

<samp>
Extension caches are needed to be cleared. That is why a `extensions.<extension>.module`
option is given. If you want to use your configuration instead then pass your module
path there.

Additionally, extensions are loaded using a loop. You can take advantage
of this. If you want to integrate another plugin then do the following.
</samp>

```lua
...
config.extensions.example = {
  enable = true,
  module = "my_config.example"
  options = { ... },
}
colo.setup(config)
```

## COMMANDS

Following are the default commands that come with nvim-colo.

- Know about a theme or, set a theme by `:Colo _|<theme_name>`.
- Add a font style or, transparency by `:ColoAdd <aggregate>`.
- Remove a font style or, transparency by `:ColoRemove <aggregate>`.
- Toggle a font style or, transparency `:ColoToggle <aggregate>`.
- Remove all highlights by `:ColoClean`.
- Invert current theme or, invert the selected theme by `:ColoInvert _|<theme_name>`.
- Open the telescope theme picker by `:ColoTele`.

## TODOS

- Add [nordic.nvim](https://github.com/AlexvZyl/nordic.nvim), [rasmus.nvim](https://github.com/kvrohit/rasmus.nvim), nirvana, warm and [boo](https://github.com/rockerBOO/boo-colorscheme-nvim), [nordic](https://github.com/AlexvZyl/nordic.nvim) and [chocolate](https://gitlab.com/snakedye/chocolate).
- Support codewindow.nvim, aerial.nvim, harpoon.nvim, grapple.nvim, lazy.nvim,
  leap.nvim, flit.nvim, trouble.nvim, portal.nvim, overseer.nvim, dapui.nvim
  diffview.nvim, jaq.nvim, vim-illuminate, move.nvim, pretty-fold.nvim, vim-sneak,
  lsp-saga.nvim, barbar.nvim and lightspeed.nvim.
- Add a colorpicker.
- Add an interactive playground.
- Add acromatic color checker function.
- Add temperature related functions.
- Add cold related functions.
- Add warmth related functions.
- Add contrast related functions.
- Write tests.
- Write guides.
- Refactor `api.lua`.
- Refactor `color.lua`.
- Refactor `extensions`.
- Fix telescope: previews are not showed when results list is empty. (Invalied buffer ID)

<h2><samp>GALLERY</samp></h2>

Following are some demo videos of this plugin in action.

<details>

<summary><samp>It's good to use your mouse sometimes. Wink.</samp></summary>

<h3><samp>Set a theme</samp></h3>

![apply](./demos/apply.gif)

<h3><samp>A telescope picker</samp></h3>

![picker](./demos/telescope.gif)

<h3><samp>Cycle themes</samp></h3>

![cycle](./demos/cycle.gif)

<h3><samp>Set a random theme</samp><h3>

![random](./demos/random.gif)

<h3><samp>Invert colors of a theme</samp></h3>

![invert](./demos/invert.gif)

<h3><samp>Add contrasts to floating windows, file explorers, cmdline and pmenu</samp></h3>

![contrast](./demos/contrast.gif)

<h3><samp>Make comments italic</samp></h3>

![italic](./demos/italic.gif)

</details>

<p align="center"><samp><strong>This project is licensed under <a href="https://github.com/dharmx/nvim-colo/blob/main/LICENSE">GPL-3.0</a>.</strong></samp></p>
