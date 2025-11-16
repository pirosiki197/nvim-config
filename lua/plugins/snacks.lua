return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    explorer = {
      replace_netrw = true,
      enabled = true,
    },
    words = { enabled = true },
  },
  keys = {
    { "<c-n>",      function() Snacks.explorer.open() end,           desc = "Explorer" },
    { "<leader>gg", function() Snacks.lazygit() end,                 desc = "LazyGit" },
    { "]]",         function() Snacks.words.jump(vim.v.count1) end,  desc = "Next Reference",  mode = { "n", "t" } },
    { "[[",         function() Snacks.words.jump(-vim.v.count1) end, desc = "Prev Reference",  mode = { "n", "t" } },
    { "<c-_>",      function() Snacks.terminal() end,                desc = "Toggle Terminal", mode = { "n", "t" } },
  }
}
