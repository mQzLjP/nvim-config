return {
  {
    "saghen/blink.cmp",
    lazy = false,
    enabled = true,
    dependencies = {
      "rafamadriz/friendly-snippets",
      "giuxtaposition/blink-cmp-copilot",
    },
    version = "*",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      completion = {
        list = {
          selection = {
            preselect = false,
            auto_insert = true,
          },
        },
      },
      -- 'default' for mappings similar to built-in completion
      -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
      -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
      -- See the full "keymap" documentation for information on defining your own keymap.
      keymap = {
        preset = "default",
        ["<C-CR>"] = { "select_and_accept", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
        ["<C-e>"] = { "show", "hide", "fallback" },
        -- ["<CR>"] = {
        --   function(cmp)
        --     if cmp.snippet_active() then
        --       return cmp.accept()
        --     else
        --       return cmp.select_and_accept()
        --     end
        --   end,
        --   "fallback",
        -- },
      },

      appearance = {
        -- Sets the fallback highlight groups to nvim-cmp's highlight groups
        -- Useful for when your theme doesn't support blink.cmp
        -- Will be removed in a future release
        -- use_nvim_cmp_as_default = true,
        -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = "mono",
      },

      -- Default list of enabled providers defined so that you can extend it
      -- elsewhere in your config, without redefining it, due to `opts_extend`
      sources = {
        --   default = { "lsp", "path", "snippets", "buffer", "codeium" },
        --   providers = {
        --     codeium = { name = "Codeium", module = "codeium.blink", async = true },
        --   },
        default = { "copilot", "lsp", "path", "buffer", "snippets" },
        providers = {
          copilot = {
            name = "copilot",
            module = "blink-cmp-copilot",
            score_offset = 100,
            async = true,
            enabled = true, -- this is what made it work!
            opts = {
              max_completions = 4,
            },
            transform_items = function(_, items)
              local CompletionItemKind = require("blink.cmp.types").CompletionItemKind
              local kind_idx = #CompletionItemKind + 1
              CompletionItemKind[kind_idx] = "Copilot"
              for _, item in ipairs(items) do
                item.kind = kind_idx
              end
              return items
            end,
          },
        },
      },
      opts_extend = { "sources.default" },
    },
  },
}
