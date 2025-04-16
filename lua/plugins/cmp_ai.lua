return {
  "Saghen/blink.cmp",
  optional = true,
  -- opts = function(_, opts)
  --   -- ensure we have a keymap table
  --   opts.keymap = opts.keymap or {}
  --   -- switch from the default preset to the VS‑Code‑style super‑tab
  --   opts.keymap.preset = "super-tab" -- :contentReference[oaicite:0]{index=0}
  --
  --   -- if you want to tweak Shift‑Tab, re‑declare it here
  --   opts.keymap["<S-Tab>"] = { "snippet_backward", "fallback" }
  -- end,

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    completion = {
      trigger = {
        show_on_keyword = true,
        show_on_insert_on_trigger_character = true,
        show_on_trigger_character = false,
      },
      ghost_text = {
        enabled = true,
        show_without_selection = true,
      },
      menu = {
        auto_show = true,
      },
    },
    keymap = {
      ["<C-k>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide", "fallback" },

      ["<Tab>"] = {
        function(cmp)
          if cmp.snippet_active() then
            return cmp.accept()
          else
            cmp.is_active()
            return cmp.select_and_accept()
          end
        end,
        "snippet_forward",
        "fallback",
      },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },

      ["<Up>"] = { "fallback" },
      ["<Down>"] = { "fallback" },
      ["<C-p>"] = { "select_prev", "fallback_to_mappings" },
      ["<C-n>"] = { "select_next", "fallback_to_mappings" },

      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },

      ["<C-space>"] = { "show_signature", "hide_signature", "fallback" },
    },
  },
}
