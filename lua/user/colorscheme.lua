-- local colorscheme = "tokyonight-night"
local colorscheme = "gruvbox-material"

vim.g.gruvbox_material_background = "soft"
vim.g.gruvbox_material_foreground = "original"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
