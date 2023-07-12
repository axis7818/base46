local M = {}

local change_lightness = require("base46.colors").change_hex_lightness
-- local change_hue = require("base46.colors").change_hex_hue

-- Define the Catppuccin Mocha theme
local catppuccin_theme = {
	Rosewater = "#f5e0dc",
	Flamingo = "#f2cdcd",
	Pink = "#f5c2e7",
	Mauve = "#cba6f7",
	Red = "#f38ba8",
	Maroon = "#eba0ac",
  Peach = "#fab387",
  Yellow = "#f9e2af",
  Green = "#a6e3a1",
  Teal = "#94e2d5",
  Sky = "#89dceb",
  Sapphire = "#74c7ec",
  Blue = "#89b4fa",
  Lavender = "#b4befe",
  Text = "#cdd6f4",
  Subtext1 = "#bac2de",
  Subtext0 = "#a6adc8",
  Overlay2 = "#9399b2",
  Overlay1 = "#7f849c",
  Overlay0 = "#6c7086",
  Surface2 = "#585b70",
  Surface1 = "#45475a",
  Surface0 = "#313244",
  Base = "#1e1e2e",
  Mantle = "#181825",
  Crust = "#11111b",
}

-- calculate some more colors
catppuccin_theme.White = change_lightness(catppuccin_theme.Text, 10)
local undefined_color = "#ff00ff"

M.base_30 = {
  white = catppuccin_theme.White,
  darker_black = change_lightness(catppuccin_theme.Base, -5),
  black = catppuccin_theme.Base, --  nvim bg
  black2 = undefined_color,
  one_bg = undefined_color, -- real bg of onedark
  one_bg2 = undefined_color,
  one_bg3 = undefined_color,
  grey = undefined_color,
  grey_fg = undefined_color,
  grey_fg2 = undefined_color,
  light_grey = undefined_color,
  red = catppuccin_theme.Red,
  baby_pink = catppuccin_theme.Rosewater,
  pink = catppuccin_theme.Pink,
  line = undefined_color, -- for lines like vertsplit
  green = catppuccin_theme.Green,
  vibrant_green = change_lightness(catppuccin_theme.Green, 10),
  nord_blue = catppuccin_theme.Sapphire,
  blue = catppuccin_theme.Blue,
  yellow = catppuccin_theme.Yellow,
  sun = change_lightness(catppuccin_theme.Yellow, 10),
  purple = catppuccin_theme.Lavender,
  dark_purple = catppuccin_theme.Mauve,
  teal = catppuccin_theme.Teal,
  orange = catppuccin_theme.Peach,
  cyan = catppuccin_theme.Sky,
  statusline_bg = undefined_color,
  lightbg = undefined_color,
  pmenu_bg = undefined_color,
  folder_bg = undefined_color,
  lavender = undefined_color,
}

M.base_16 = {
  base00 = catppuccin_theme.Base,
  base01 = change_lightness(catppuccin_theme.Base, 5),
  base02 = change_lightness(catppuccin_theme.Base, 10),
  base03 = catppuccin_theme.Surface0,
  base04 = catppuccin_theme.Surface1,
  base05 = catppuccin_theme.Subtext1,
  base06 = catppuccin_theme.Text,
  base07 = catppuccin_theme.White,
  base08 = catppuccin_theme.Red,
  base09 = catppuccin_theme.Peach,
  base0A = catppuccin_theme.Yellow,
  base0B = catppuccin_theme.Green,
  base0C = catppuccin_theme.Sky,
  base0D = catppuccin_theme.Blue,
  base0E = catppuccin_theme.Lavender,
  base0F = catppuccin_theme.Maroon
}

M.polish_hl = {
  ["@variable"] = { fg = M.base_30.lavender },
  ["@property"] = { fg = M.base_30.teal },
  ["@variable.builtin"] = { fg = M.base_30.red },
}

M.type = "dark"

M = require("base46").override_theme(M, "catppuccin-mocha")

return M
