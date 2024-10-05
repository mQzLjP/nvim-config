return {
  "kaarmu/typst.vim",
  ft = "typst",
  lazy = false,
  keys = {
    {
      "<localleader>t",
      "<cmd>TypstWatch<cr>",
      desc = "Compile and View Typst file on change",
    },
  },
}
