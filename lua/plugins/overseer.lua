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
      bindings = {
        ["?"] = "ShowHelp",
        ["g?"] = "ShowHelp",
        ["<CR>"] = "RunAction",
        ["<C-e>"] = "Edit",
        ["o"] = "Open",
        ["<C-v>"] = "OpenVsplit",
        ["<C-s>"] = "OpenSplit",
        ["<C-f>"] = "OpenFloat",
        ["<C-q>"] = "OpenQuickFix",
        ["p"] = "TogglePreview",
        ["<C-l>"] = false,
        ["<C-h>"] = false,
        ["L"] = "IncreaseAllDetail",
        ["H"] = "DecreaseAllDetail",
        ["["] = "DecreaseWidth",
        ["]"] = "IncreaseWidth",
        ["{"] = "PrevTask",
        ["}"] = "NextTask",
        ["<C-k>"] = false,
        ["<C-j>"] = false,
        ["<K>"] = "ScrollOutputUp",
        ["<J>"] = "ScrollOutputDown",
        ["q"] = "Close",
      },
    },
  },
  init = function()
    require("overseer").setup {
      task_list = {
        direction = "bottom",
        min_height = 15, -- shrink this to taste
        max_height = 15, -- keep it consistent
        bindings = {
          ["?"] = "ShowHelp",
          ["g?"] = "ShowHelp",
          ["<CR>"] = "RunAction",
          ["<C-e>"] = "Edit",
          ["o"] = "Open",
          ["<C-v>"] = "OpenVsplit",
          ["<C-s>"] = "OpenSplit",
          ["<C-f>"] = "OpenFloat",
          ["<C-q>"] = "OpenQuickFix",
          ["p"] = "TogglePreview",
          ["<C-l>"] = false,
          ["<C-h>"] = false,
          ["L"] = "IncreaseAllDetail",
          ["H"] = "DecreaseAllDetail",
          ["["] = "DecreaseWidth",
          ["]"] = "IncreaseWidth",
          ["{"] = "PrevTask",
          ["}"] = "NextTask",
          ["<C-k>"] = false,
          ["<C-j>"] = false,
          ["<K>"] = "ScrollOutputUp",
          ["<J>"] = "ScrollOutputDown",
          ["q"] = "Close",
        },
      },
    }
  end,
}
