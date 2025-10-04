return {
  {
    "akinsho/bufferline.nvim",
    config = function()
      vim.opt.termguicolors = true
      require("bufferline").setup()
      vim.keymap.set("n", "<Tab>", ":bnext<CR>")
      vim.keymap.set("n", "<S-Tab>", ":bprev<CR>")
    end,
    dependencies = "nvim-tree/nvim-web-devicons",
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
