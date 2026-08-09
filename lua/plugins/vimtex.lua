return {
  "lervag/vimtex",
  init = function()
    vim.g.vimtex_view_general_viewer = "zathura"
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_compiler_progname = "nvr"
    vim.g.vimtex_compiler_latexmk_engines = {
      _ = "-lualatex",
      -- _ = "-pdflatex",
    }
    vim.g.vimtex_compiler_latexmk = {
      options = {
        "--shell-escape",
        "-verbose",
        "-file-line-error",
        "--synctex=1",
        "--interaction=nonstopmode",
      },
    }
    vim.g.vimtex_quickfix_mode = 0
  end,
}
