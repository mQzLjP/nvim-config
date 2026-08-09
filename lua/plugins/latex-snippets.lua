return {
  {
    "HilariousJon/luasnip-latex-snippets.nvim",
    -- vimtex isn't required if using treesitter
    dependencies = { "L3MON4D3/LuaSnip" },
    config = function()
      require("luasnip-latex-snippets").setup({ use_treesitter = true })
      require("luasnip").config.setup({ enable_autosnippets = true })
    end,
  },
  -- {
  --   "KeitaNakamura/tex-conceal.vim",
  --   init = function()
  --     vim.g.tex_conceal = "abdmg"
  --   end,
  --   opts = {
  --     conceallevel = 1,
  --   },
  -- },
}
