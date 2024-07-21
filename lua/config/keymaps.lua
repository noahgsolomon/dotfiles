-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps herevim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

vim.keymap.set("n", "<C-w>-", "<cmd>split<CR>", { desc = "Split window below" })
vim.keymap.set("n", "<C-w>|", "<cmd>vsplit<CR>", { desc = "Split window right" })
vim.keymap.set("n", "<C-w>d", "<cmd>close<CR>", { desc = "Delete window" })
vim.keymap.set("n", "<C-w>m", "<cmd>MaximizerToggle<CR>", { desc = "Maximize toggle" })
-- Alternative window navigation using leader key
vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Go to right window" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.keymap.set("n", "n", "nzzzv", { noremap = true, silent = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true, silent = true })

-- Toggleterm keymaps
vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
vim.keymap.set("t", "<C-\\>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })

-- Function to set terminal keymaps
function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
end

-- Auto-command to set terminal keymaps when terminal is opened
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

-- Additional toggleterm keymaps (optional)
vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", { desc = "ToggleTerm float" })
vim.keymap.set(
  "n",
  "<leader>th",
  "<cmd>ToggleTerm size=10 direction=horizontal<CR>",
  { desc = "ToggleTerm horizontal split" }
)
vim.keymap.set(
  "n",
  "<leader>tv",
  "<cmd>ToggleTerm size=80 direction=vertical<CR>",
  { desc = "ToggleTerm vertical split" }
)
