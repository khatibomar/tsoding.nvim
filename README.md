# tsoding.nvim

A Neovim port of [rexim](https://github.com/rexim)'s [Gruber Darker](https://github.com/rexim/gruber-darker-theme) theme (originally an Emacs theme by Jason Blevins).

## Installation

```lua
-- lazy.nvim
{
  "tsoding/tsoding.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function(_, opts)
    require("tsoding").setup(opts)
    vim.cmd.colorscheme("tsoding")
  end,
}
```

## Usage

```lua
vim.cmd.colorscheme("tsoding")
```

Or with options:

```lua
require("tsoding").setup({
  transparent = false,
  italics = {
    comments  = true,
    keywords  = false,
    functions = false,
    strings   = false,
    variables = false,
  },
})
vim.cmd.colorscheme("tsoding")
```

## API

- `require("tsoding").setup(opts)` — configure options
- `require("tsoding").colorscheme()` — apply the colorscheme
- `require("tsoding").lualine()` — get a lualine theme table
- `require("tsoding").colors()` — get the palette color table

## Structure

```
tsoding.nvim/
├── colors/
│   └── tsoding.lua              — colorscheme entry point
├── lua/
│   └── tsoding/
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
