return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  build = "make",
  opts = {
    provider = "copilot",
    windows = {
      position = "right",
      wrap = true,
      width = 25,
      height = 100,
    },
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "zbirenbaum/copilot.lua",
    --- The below is optional, make sure to setup it properly if you have lazy=true
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
