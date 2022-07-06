require("nvim-lsp-installer").setup {}

require("lspconfig").tsserver.setup {
  on_attach = function()
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
    vim.keymap.set("n", "<space>gd", vim.lsp.buf.definition, {buffer = 0})
    vim.keymap.set("n", "<space>gt", vim.lsp.buf.type_definition, {buffer = 0})
    vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {buffer = 0})
  end,
}

require("lspconfig").eslint.setup{}
