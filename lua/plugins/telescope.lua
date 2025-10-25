return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release',
    },
  },
  config = function()
    require("telescope").setup({
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
        },
      },
    })
    require("telescope").load_extension("fzf")
  end,
  keys = {
    { "<C-p>",      function() require("telescope.builtin").find_files() end,          desc = "Find files" },
    { "<leader>lg", function() require("telescope.builtin").live_grep() end,           desc = "Live grep" },
    { "<leader>fb", function() require("telescope.builtin").buffers() end,             desc = "Find buffers" },
    { "grr",        function() require("telescope.builtin").lsp_references() end,      desc = "Show references" },
    { "gri",        function() require("telescope.builtin").lsp_implementations() end, desc = "Show implementations" },
    { "gci",        function() require("telescope.builtin").lsp_incoming_calls() end,  desc = "Show call hierarchy" }
  }
}
