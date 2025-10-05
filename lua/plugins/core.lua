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
      vim.keymap.set("n", "<leader>c", require("osc52").copy_operator, {expr = true})
      vim.keymap.set("n", "<leader>cc", "<leader>c_", {remap = true})
      vim.keymap.set("v", "<leader>c", require("osc52").copy_visual)
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "bash", "go", "dockerfile" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({})
      vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle NvimTree" })
    end,
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    keys = {
      {
        "<C-p>",
        function() require("fzf-lua").files() end,
        desc = "Find files",
      },
      {
        "<leader>lg",
        function() require("fzf-lua").live_grep() end,
        desc = "Live grep",
      },
    },
  },
  {
    "akinsho/toggleterm.nvim",
    opts = {
      open_mapping = "<leader>ft",
      direction = "float",
    },
  },
}
