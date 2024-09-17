return {
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
      vim.g.material_style = "deep ocean"
      vim.cmd([[colorscheme material]])
    end,
  },
}
--return {
--  "folke/tokyonight.nvim",
--  lazy = true,
--  opts = { style = "night" },
--}
