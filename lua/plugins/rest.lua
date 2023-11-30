return {
  "rest-nvim/rest.nvim",
  dependencies = { { "nvim-lua/plenary.nvim" } },
  config = function()
    require("rest-nvim").setup({
      --- Get the same options from Packer setup
    })
    vim.api.nvim_set_keymap("n", "<leader>r", "<Plug>RestNvim", { silent = true })
  end,
}
