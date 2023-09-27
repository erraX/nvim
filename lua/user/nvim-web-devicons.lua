local status_ok, nvim_web_devicons = pcall(require, "nvim-web-devicons")
if not status_ok then
  return
end

nvim_web_devicons.set_icon {
  vue = {
    icon = "",
    color = "#8dc149",
    cterm_color = "113",
    name = "Vue",
  },
  json = {
    icon = "󰘦",
    color = "#cbcb41",
    cterm_color = "185",
    name = "Json",
  },
  json5 = {
    icon = "󰘦",
    color = "#cbcb41",
    cterm_color = "185",
    name = "Json5",
  },
}
