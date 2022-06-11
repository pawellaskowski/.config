require'lspconfig'.tsserver.setup{
  on_attach = function()
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
    vim.keymap.set("n", "gD", vim.lsp.buf.definition, {buffer = 0})
    vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {buffer = 0})
  end,
}

require'lspconfig'.eslint.setup{}
