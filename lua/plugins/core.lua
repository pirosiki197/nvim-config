return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd.colorscheme "tokyonight"
    end,
  },
  {
    "ojroques/nvim-osc52",
    config = function()
      vim.keymap.set("n", "<leader>c", require("osc52").copy_operator, { expr = true })
      vim.keymap.set("n", "<leader>cc", "<leader>c_", { remap = true })
      vim.keymap.set("v", "<leader>c", require("osc52").copy_visual)
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        update_focused_file = {
          enable = true,
        },
        diagnostics = {
          enable = true,
        },
      })
      vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle NvimTree" })
    end,
  },
  {
    "windwp/nvim-autopairs",
    opts = {},
  },
}
