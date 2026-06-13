# gruber-darker.nvim

A Neovim port of [rexim](https://github.com/rexim)'s [Gruber Darker](https://github.com/rexim/gruber-darker-theme) theme (originally an Emacs theme by Jason Blevins).

## Installation

```lua
-- lazy.nvim
{
  "tsoding/gruber-darker.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function(_, opts)
    require("gruber-darker").setup(opts)
    vim.cmd.colorscheme("gruber-darker")
  end,
}
```

## Usage

```lua
vim.cmd.colorscheme("gruber-darker")
```

Or with options:

```lua
require("gruber-darker").setup({
  transparent = false,
  italics = {
    comments  = true,
    keywords  = false,
    functions = false,
    strings   = false,
    variables = false,
  },
})
vim.cmd.colorscheme("gruber-darker")
```

## API

- `require("gruber-darker").setup(opts)` — configure options
- `require("gruber-darker").colorscheme()` — apply the colorscheme
- `require("gruber-darker").lualine()` — get a lualine theme table
- `require("gruber-darker").colors()` — get the palette color table

## Structure

```
gruber-darker.nvim/
├── colors/
│   └── gruber-darker.lua        — colorscheme entry point
├── lua/
│   └── gruber-darker/
│       ├── init.lua             — public API (setup, colorscheme, lualine, colors)
│       ├── palette.lua          — color definitions
│       └── highlights.lua       — highlight groups
└── README.md
```

## Credits

- [Jason Blevins](https://github.com/jrblevin) — original Gruber Darker theme
- [Alexey Kutepov (rexim)](https://github.com/rexim) — Gruber Darker port
- [Khatib Omar (khatibomar)](https://github.com/khatibomar) — gopher.nvim (inspiration for plugin structure)
- [Tsoding](https://github.com/tsoding) — coding philosophy
# tsoding.nvim
