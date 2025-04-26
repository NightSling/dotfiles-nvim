return {
  {
    "chomosuke/typst-preview.nvim",
    lazy = false, -- or ft = 'typst'
    version = "1.*",
    opts = {
      open_cmd = "qutebrowser %s",
      debug = true,
      port = 4956,
      invert_colors = "auto",
    }, -- lazy.nvim will implicitly calls `setup {}`
  },
}
