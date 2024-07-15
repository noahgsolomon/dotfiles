-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.o.guifont = "JetbrainsMono Nerd Font Mono:h14"
vim.opt.wrap = true
vim.opt.linebreak = true

if vim.g.neovide then
  vim.g.neovide_cursor_trail_size = 0
  vim.g.neovide_show_border = true
  -- Set the overall transparency
  vim.g.neovide_transparency = 0.85
  vim.g.neovide_floating_shadow = false
  -- Enable blur
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0
  vim.g.neovide_window_blurred = true

  -- Set transparency for floating windows
  vim.o.pumblend = 85 -- For popup menu
  vim.o.winblend = 85 -- For floating windows

  -- Make floating windows transparent
  vim.cmd([[
  highlight NormalFloat guibg=NONE
  highlight Pmenu guibg=NONE
  highlight PmenuSel guibg=NONE
  highlight PmenuSbar guibg=NONE
  highlight PmenuThumb guibg=NONE
]])
end
