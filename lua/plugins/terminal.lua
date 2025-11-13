return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      open_mapping = { "<C-\\>", "<c-¥>" },
      direction = "float",
    })
  end
}
