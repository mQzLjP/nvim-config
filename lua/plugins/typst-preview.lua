return {
  "chomosuke/typst-preview.nvim",
  ft = "typst",
  version = "0.3.*",
  enabled = false,
  build = function()
    require("typst-preview").update()
  end,
  keys = {
    {
      "<localleader>t",
      "<cmd>TypstPreview<cr>",
      desc = "TypstPreview",
    },
  },
}
