return {
  "folke/noice.nvim",
  opts = function(_, opts)
    opts.cmdline = {
      view = "cmdline", -- Use the default cmdline view
    }
    opts.messages = {
      view = "mini", -- Use the mini view for messages
      view_error = "mini", -- Use mini view for errors too
      view_warn = "mini", -- Use mini view for warnings
    }
    opts.popupmenu = {
      enabled = false, -- Disable the popup menu
    }
    -- Keep your existing route for skipping certain notifications
    table.insert(opts.routes, {
      filter = {
        event = "notify",
        find = "No information available",
      },
      opts = { skip = true },
    })
  end,
}
