-- if true then
--   return {}
-- end
return {
  "zbirenbaum/copilot.lua",
  requires = {
    -- "copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
    -- "folke/sidekick.nvim",
  },
  cmd = "Copilot",
  event = "InsertEnter",
  opts = function()
    require("copilot.api").status = require("copilot.status")
  end,
  config = function()
    require("copilot").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
    })
  end,
}
