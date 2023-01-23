lvim.plugins = {
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "<leader>mw", ":HopWord<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "<leader>mv", ":HopVertical<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "<leader>mt", ":HopChar2<cr>", { silent = true })
    end,
  },
}
