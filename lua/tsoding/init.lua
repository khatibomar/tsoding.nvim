-- tsoding.nvim
-- Port of rexim's Gruber Darker theme.
-- Inspired by the gopher.nvim plugin structure.

local M = {}

local defaults = {
  transparent = false,
  italics = {
    comments  = true,
    keywords  = false,
    functions = false,
    strings   = false,
    variables = false,
  },
}

M._config = vim.deepcopy(defaults)

function M.setup(opts)
  opts = opts or {}
  M._config = vim.tbl_deep_extend("force", vim.deepcopy(defaults), opts)
end

function M.colorscheme()
  local cfg = M._config
  if vim.g.colors_name then vim.cmd("highlight clear") end
  if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
  vim.o.termguicolors = true
  vim.o.background    = "dark"
  vim.g.colors_name   = "tsoding"

  local palette    = require("tsoding.palette")
  local highlights = require("tsoding.highlights")
  local c = palette.get("dark")
  highlights.apply(c, cfg)

  -- Override Normal bg if transparent
  if cfg.transparent then
    vim.api.nvim_set_hl(0, "Normal", { fg = c.fg, bg = c.none })
  end

  -- Terminal colors (16 ANSI slots)
  local term = {
    c.bg, c.red, c.green, c.yellow, c.niagara, c.wisteria, c.quartz, c.fg,
    c.bg4, c.red_bright, c.green, c.yellow, c.niagara, c.wisteria, c.quartz, c.fg1,
  }
  for i, color in ipairs(term) do
    vim.g["terminal_color_" .. (i - 1)] = color
  end
end

function M.lualine()
  local palette = require("tsoding.palette")
  local c = palette.get("dark")
  local function mode_section(fg, bg)
    return { a = { fg = fg, bg = bg, gui = "bold" },
             b = { fg = c.fg,        bg = c.bg1 },
             c = { fg = c.bg4,       bg = c.bg } }
  end
  return {
    normal   = mode_section(c.bg, c.yellow),
    insert   = mode_section(c.bg, c.green),
    visual   = mode_section(c.bg, c.niagara),
    replace  = mode_section(c.bg, c.red),
    command  = mode_section(c.bg, c.red_bright),
    terminal = mode_section(c.bg, c.quartz),
    inactive = {
      a = { fg = c.bg4,    bg = c.bg1 },
      b = { fg = c.bg4,    bg = c.bg1 },
      c = { fg = c.bg4,    bg = c.bg },
    },
  }
end

function M.colors()
  return require("tsoding.palette").get("dark")
end

return M
