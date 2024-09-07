-- return {
--   "nvim-neo-tree/neo-tree.nvim",
--   opts = {
--     filesystem = {
--       filtered_items = {
--         visible = true,
--         show_hidden_count = true,
--         hide_dotfiles = false,
--         hide_gitignored = true,
--         hide_by_name = {
--           -- '.git',
--           -- '.DS_Store',
--           -- 'thumbs.db',
--         },
--         never_show = {},
--       },
--     },
--   },
-- }
return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    window = {
      -- position = "top",
      -- width = "100%",
      -- height = "20%", -- Adjust this value to change the height of the Neotree window
      mapping_options = {
        noremap = true,
        nowait = true,
      },
    },
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          -- '.git',
          -- '.DS_Store',
          -- 'thumbs.db',
        },
        never_show = {},
      },
      -- Add these options for better icon support
      use_libuv_file_watcher = true,
      follow_current_file = {
        enabled = true,
      },
      group_empty_dirs = true,
      window = {
        mappings = {
          ["<space>"] = "none",
        },
      },
    },
    default_component_configs = {
      modified = {
        symbol = "[+]",
      },
      git_status = {
        symbols = {
          added = "",
          deleted = "",
          modified = "",
          renamed = "➜",
          untracked = "★",
          ignored = "◌",
          unstaged = "✗",
          staged = "✓",
          conflict = "",
        },
      },
    },
  },
}
