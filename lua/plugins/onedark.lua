return {
  "olimorris/onedarkpro.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    options = {
      highlight_inactive_windows = false,
    },
  },
  init = function()
    require("onedarkpro").setup {
      plugins = {
        all = true,
      },
      filetypes = {
        all = true,
      },
      options = {
        bold = true,
        italic = true,
        undercurl = true,
        window_unfocussed_color = true,
      },
      styles = {
        comments = "italic",
        keywords = "italic",
        functions = "italic",
        conditionals = "italic",
        constants = "bold",
      },
      highlights = {
        Comment = { italic = true },
        Directory = { bold = true },
        ErrorMsg = { italic = true, bold = true },
      },
    }
  end,
}
