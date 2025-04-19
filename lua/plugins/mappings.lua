return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>e"] = { "<cmd>Oil<cr>", desc = "Oil the current directory." },
          ["<Leader>o"] = { "<cmd>Neotree float toggle<cr>", desc = "Toggle neotree (float) current directory." },
          ['<C-">'] = { "<cmd>AstroRoot<cr>", desc = "Go to AstroNvim project root." },
          ["<C-F2>"] = { "<cmd>CompilerOpen<cr>", desc = "Open's the Compiler.Nvim layout." },
          ["<F2>"] = { "<cmd>CompilerStop<cr>" .. "<cmd>CompilerRedo<cr>", desc = "Redo last compiler task." },
          ["<A-F2>"] = { "<cmd>CompilerToggleResults<cr>", desc = "View last compiler task." },
          ["<Leader>ro"] = { "<cmd>CompilerOpen<cr>", desc = "Open's the Compiler.Nvim layout." },
          ["<Leader>rr"] = { "<cmd>CompilerStop<cr>" .. "<cmd>CompilerRedo<cr>", desc = "Redo last compiler task." },
          ["<C-S>P"] = { '"_dP', desc = "Paste (no-delete register)" },
          ["<Leader>rq"] = { "<cmd>CompilerToggleResults<cr>", desc = "View last compiler task." },
          -- Switch to the next buffer (towards right).
          ["<S-l>"] = { "<cmd>bnext<cr>", desc = "Switch to the next buffer" },
          -- Switch to the previous buffer (towards left).
          ["<S-h>"] = { "<cmd>bprevious<cr>", desc = "Switch to the previous buffer" },
          ["<Leader>G"] = { "<cmd>Octo actions<cr>", desc = "Open Octo actions" },
          ["<Leader>uk"] = { "<cmd>ShowkeysToggle<cr>", desc = "Toggle show keys for neovim." },
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
