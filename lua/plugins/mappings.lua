return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>O"] = { "<cmd>Oil --float<cr>", desc = "Oil the current directory." },
          ['<C-">'] = { "<cmd>AstroRoot<cr>", desc = "Go to AstroNvim project root." },
          ["<C-F2>"] = { "<cmd>CompilerOpen<cr>", desc = "Open's the Compiler.Nvim layout." },
          ["<F2>"] = { "<cmd>CompilerStop<cr>" .. "<cmd>CompilerRedo<cr>", desc = "Redo last compiler task." },
          ["<A-F2>"] = { "<cmd>CompilerToggleResults<cr>", desc = "View last compiler task." },
          ["<Leader>ro"] = { "<cmd>CompilerOpen<cr>", desc = "Open's the Compiler.Nvim layout." },
          ["<Leader>rr"] = { "<cmd>CompilerStop<cr>" .. "<cmd>CompilerRedo<cr>", desc = "Redo last compiler task." },
          ["<Leader>rq"] = { "<cmd>CompilerToggleResults<cr>", desc = "View last compiler task." },
        },
        i = {
          ["jk"] = {
            desc = "Exit insert mode",
            callback = function()
              vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "i", false)
            end,
          },
          -- New mapping for showing documentation (like 'K' in normal mode)
          ["<C-S-k>"] = { "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Show documentation (Hover)" },
          -- New mapping for showing signature help
          -- ["<C-S-Space>"] = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", desc = "Show signature help" },
          ["<C-F2>"] = { "<cmd>CompilerOpen<cr>", desc = "Open's the Compiler.Nvim layout." },
          ["<F2>"] = { "<cmd>CompilerStop<cr>" .. "<cmd>CompilerRedo<cr>", desc = "Redo last compiler task." },
          ["<A-F2>"] = { "<cmd>CompilerToggleResults<cr>", desc = "View last compiler task." },
          ["<C-Backspace>"] = "<C-w>",
          ["<A-Backspace>"] = "<C-w>",
          ["<C-s>"] = { "<cmd>w<cr>", desc = "Saves the current file." },
        },
        v = {
          ["v"] = {
            callback = function() vim.api.nvim_feedkeys("grn", "x", true) end,
            desc = "Increment treesitter selection",
          },
          ["V"] = {
            callback = function() vim.api.nvim_feedkeys("grm", "x", true) end,
            desc = "Decrement treesitter selection",
          },
        },
      },
    },
  },
}
