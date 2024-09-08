-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.wrap = true
vim.opt.linebreak = true
vim.api.nvim_set_keymap("n", "<C-v>", "<C-q>", { noremap = true, silent = true })
