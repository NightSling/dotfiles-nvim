return {
  "echasnovski/mini.bracketed",
  event = "User AstroFile",
  opts = {
    treesitter = { suffix = "" },
  },
  specs = {
    {
      "catppuccin",
      optional = true,
      ---@type CatppuccinOptions
      opts = { integrations = { mini = true } },
    },
  },
  init = function()
    require("mini.bracketed").setup {
      treesitter = { suffix = "" },
    }
  end,
}
