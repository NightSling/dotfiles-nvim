return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      autocmds = {
        kitty_spacings = {
          {
            event = "VimEnter",
            desc = "Set kitty padding to zero when entering vim.",
            command = "silent !kitty @ set-spacing padding=0",
          },
          {
            event = "VimLeave",
            desc = "Set kitty padding to 0 when exiting vim.",
            command = "silent !kitty @ set-spacing padding=0",
          },
        },
        cpp_indentation = {
          {
            event = "FileType",
            pattern = { "c", "cpp" },
            desc = "Set C/C++ indentation settings",
            command = [[
              setlocal tabstop=2 shiftwidth=2 expandtab
            ]],
          },
        },
      },
    },
  },
}
