local M = {}

local palette = {
	rosewater = "#F5E0DC",
	flamingo  = "#F2CDCD",
	pink      = "#F5C2E7",
	mauve     = "#CBA6F7",
	red       = "#F38BA8",
	maroon    = "#EBA0AC",
	peach     = "#FAB387",
	yellow    = "#F9E2AF",
	green     = "#A6E3A1",
	teal      = "#94E2D5",
	sky       = "#89DCEB",
	sapphire  = "#74C7EC",
	blue      = "#89B4FA",
	lavender  = "#B4BEFE",

	text      = "#CDD6F4",
	subtext1  = "#BAC2DE",
	subtext0  = "#A6ADC8",
	overlay2  = "#9399B2",
	overlay1  = "#7F849C",
	overlay0  = "#6C7086",
	surface2  = "#585B70",
	surface1  = "#45475A",
	surface0  = "#313244",

	base      = "#1E1E2E",
	mantle    = "#181825",
	crust     = "#11111B",
}

M.base_30 = {
  white         = palette.text,
  darker_black  = palette.crust,
  black         = palette.mantle, --  nvim bg
  black2        = palette.base,
  grey          = palette.surface0,
  grey_fg       = palette.surface1,
  grey_fg2      = palette.surface2,
  light_grey    = palette.overlay0,
  red           = palette.red,
  baby_pink     = palette.maroon,
  pink          = palette.pink,
  line          = palette.surface1, -- for lines like vertsplit
  green         = palette.green,
  vibrant_green = palette.green,
  nord_blue     = palette.blue,
  blue          = palette.blue,
  yellow        = palette.yellow,
  sun           = palette.yellow,
  purple        = palette.mauve,
  dark_purple   = palette.mauve,
  teal          = palette.teal,
  orange        = palette.peach,
  cyan          = palette.sky,
  statusline_bg = palette.surface0,
  lightbg       = palette.surface1,
  lightbg2      = palette.surface2,
  pmenu_bg      = palette.green,
  folder_bg     = palette.blue,
  lavender      = palette.lavender,
}

M.base_16 = {
  base00 = palette.base,
  base01 = palette.mantle,
  base02 = palette.surface0,
  base03 = palette.surface1,
  base04 = palette.surface2,
  base05 = palette.text,
  base06 = palette.rosewater,
  base07 = palette.lavender,
  base08 = palette.red,
  base09 = palette.peach,
  base0A = palette.yellow,
  base0B = palette.green,
  base0C = palette.teal,
  base0D = palette.blue,
  base0E = palette.mauve,
  base0F = palette.flamingo,
}

M.polish_hl = {
  TSVariable = { fg = M.base_30.lavender },
  TSProperty = { fg = M.base_30.teal },
  TSVariableBuiltin = { fg = M.base_30.red },
}

vim.opt.bg = "dark"

M = require("base46").override_theme(M, "catppuccin_mocha")

return M
