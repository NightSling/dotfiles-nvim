-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"
require "polish"

-- Normal mode: Ctrl + / → toggle line comment
vim.keymap.set(
  "n",
  "<C-_>",
  function() require("Comment.api").toggle.linewise.current() end,
  { noremap = true, silent = true }
)

vim.keymap.set("i", "<C-_>", function()
  local api = require "Comment.api"
  -- Leave insert mode, run toggle, then re-enter insert
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
  api.toggle.linewise.current()
  vim.api.nvim_feedkeys("A", "n", false) -- Return to Insert mode at end of line
end, { noremap = true, silent = true })

-- Visual mode: Ctrl + / → toggle comment on selection
vim.keymap.set("v", "<C-_>", function()
  local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
  vim.api.nvim_feedkeys(esc, "nx", false)
  require("Comment.api").toggle.linewise(vim.fn.visualmode())
end, { noremap = true, silent = true })

vim.api.nvim_create_user_command(
  "TypstPin",
  function()
    vim.lsp.buf.execute_command {
      command = "tinymist.pinMain",
      arguments = { vim.api.nvim_buf_get_name(0) },
    }
  end,
  {}
)
