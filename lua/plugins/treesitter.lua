return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "bash",
        "go",
        "gomod",
        "dockerfile",
        "json",
        "rust",
        "yaml",
        "zig",
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
