-- colors/tsoding.lua
-- Neovim colorscheme entry point.
-- Triggered by: vim.cmd("colorscheme tsoding")

local ok, tsoding = pcall(require, "tsoding")
if not ok then
  vim.notify("tsoding.nvim: failed to load module", vim.log.levels.ERROR)
  return
end
tsoding.colorscheme()
