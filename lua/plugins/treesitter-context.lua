return {
  "nvim-treesitter/nvim-treesitter-context",
  opts = {
    enable = true,
    throttle = true,
    max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
    patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
      default = {
        "class",
        "function",
        "method",
        "for",
        "while",
        "if",
        "switch",
        "case",
      },
    },
  },
}
