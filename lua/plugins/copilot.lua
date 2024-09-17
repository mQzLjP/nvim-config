return {
  "zbirenbaum/copilot.lua",
  keys = {
    {
      "<C-l>",
      function()
        require("copilot.suggestion").accept_word()
      end,
    },
  },
}
