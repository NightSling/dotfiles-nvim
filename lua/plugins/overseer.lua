return {
  "stevearc/overseer.nvim",
  opts = {
    -- By defining our own default overseer components without
    -- the notification component, we are disabling all overseer notifications.
    component_aliases = {
      default = {
        { "display_duration", detail_level = 2 },
        "on_output_summarize",
        "on_exit_set_status",
        --"on_complete_notify",
        "on_complete_dispose",
      },
    },
    task_list = {
      direction = "bottom",
      min_height = 15, -- shrink this to taste
      max_height = 15, -- keep it consistent
    },
  },
  init = function()
    require("overseer").setup {
      task_list = {
        direction = "bottom",
        min_height = 15, -- shrink this to taste
        max_height = 15, -- keep it consistent
      },
    }
  end,
}
