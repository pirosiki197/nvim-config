return {
  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      vim.opt.termguicolors = true
      require("bufferline").setup()
      vim.keymap.set("n", "<A-.>", "<cmd>BufferLineMoveNext<CR>")
      vim.keymap.set("n", "<A-,>", "<cmd>BufferLineMovePrev<CR>")
      vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>")
      vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "tokyonight",
        }
      })
    end,
  },
}
