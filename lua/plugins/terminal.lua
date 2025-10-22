return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      open_mapping = { "<C-\\>", "<c-¥>" },
      direction = "float",
    })
    local Terminal = require("toggleterm.terminal").Terminal

    local lazygit = Terminal:new({
      cmd = "lazygit",
      hidden = true,
      direction = "float",
    })
    vim.keymap.set("n", "<leader>gg", function() lazygit:toggle() end, { noremap = true, silent = true })
  end
}
