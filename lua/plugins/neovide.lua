if not vim.g.neovide then return {} end

-- Keymaps
vim.keymap.set({ "n", "v" }, "<Leader>Na", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
vim.keymap.set({ "n", "v" }, "<Leader>Nd", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
vim.keymap.set({ "n", "v" }, "<Leader>Nr", ":lua vim.g.neovide_scale_factor = 1<CR>")

-- Options
vim.g.neovide_padding_top = 5
vim.g.neovide_padding_right = 5
vim.g.neovide_padding_left = 5
-- vim.g.neovide_window_blurred = true
-- vim.g.neovide_floating_blur_amount_x = 5.0
-- vim.g.neovide_floating_blur_amount_y = 5.0
-- vim.g.neovide_floating_shadow = true
-- vim.g.neovide_floating_z_height = 10

vim.g.neovide_cursor_antialiasing = false

vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_cursor_hack = true

vim.opt.winblend = 20
--[[ vim.g.neovide_refresh_rate = 60 ]]
vim.keymap.set("v", "<sc-c>", '"+y')
vim.keymap.set("n", "<sc-v>", '"+P')
vim.keymap.set("v", "<sc-v>", '"+P')
vim.keymap.set("c", "<sc-v>", "<C-R>+")
vim.keymap.set("i", "<sc-v>", "<C-R>+")
vim.keymap.set("t", "<sc-v>", '<C-\\><C-n>"+Pi')

-- vim.g.neovide_position_animation_length = 0
-- vim.g.neovide_cursor_animation_length = 0.00
-- vim.g.neovide_cursor_trail_size = 0
-- vim.g.neovide_cursor_animate_in_insert_mode = false
-- vim.g.neovide_cursor_animate_command_line = false
-- vim.g.neovide_scroll_animation_far_lines = 0
-- vim.g.neovide_scroll_animation_length = 0.00

return {}
