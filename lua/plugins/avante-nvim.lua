return {
  "yetone/avante.nvim",
  opts = {
    vendors = {
      -- Available
      copilot_claude = {
        __inherited_from = "copilot",
        model = "claude-3.7-sonnet",
      },
      -- Unavailable
      copilot_claude_thinking = {
        __inherited_from = "copilot",
        model = "claude-3.7-sonnet-thought",
      },
      -- Available
      copilot_o1 = {
        __inherited_from = "copilot",
        model = "o1",
      },
      -- Available
      copilot_o3_mini = {
        __inherited_from = "copilot",
        model = "o3-mini",
      },
      -- Unavailable
      copilot_gemini = {
        __inherited_from = "copilot",
        model = "gemini-2.0-flash-001",
      },
    },
  },
  dependencies = {
    "zbirenbaum/copilot.lua", -- for providers='copilot'
  },
}
