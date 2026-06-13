-- tsoding palette
-- Port of rexim's Gruber Darker theme (github.com/rexim/gruber-darker-theme)
-- Original Emacs theme by Jason Blevins, extended by Alexey Kutepov (rexim)

local M = {}

local dark = {
  bg_dark    = "#101010",
  bg         = "#181818",
  bg1        = "#282828",
  bg2        = "#453d41",
  bg3        = "#484848",
  bg4        = "#52494e",
  fg         = "#e4e4ef",
  fg1        = "#f4f4ff",
  fg2        = "#f5f5f5",
  white      = "#ffffff",
  black      = "#000000",
  red_dim    = "#c73c3f",
  red        = "#f43841",
  red_bright = "#ff4f58",
  green      = "#73c936",
  yellow     = "#ffdd33",
  brown      = "#cc8c3c",
  quartz     = "#95a99f",
  niagara_d  = "#5f627f",
  niagara    = "#96a6c8",
  wisteria   = "#9e95c7",
  none       = "NONE",
}

function M.get(theme)
  if theme ~= "dark" then
    theme = "dark"
  end
  return vim.deepcopy(dark)
end

return M
