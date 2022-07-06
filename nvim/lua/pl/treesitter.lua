require("nvim-treesitter.configs").setup {
  ensure_installed = { "css", "html", "javascript", "json", "lua", "scss", "typescript", "tsx" },
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  }
}
