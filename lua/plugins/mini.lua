return {
  "nvim-mini/mini.nvim",
  config = function()
    require("mini.ai").setup()
    require("mini.surround").setup()
    require("mini.bufremove").setup()
    vim.keymap.set("n", "<leader>bd", require("mini.bufremove").delete)
  end
}
