local options = {
  clipboard = "unnamedplus",
  diffopt = "vertical",
  expandtab = true,
  ignorecase = true,
  mouse = "a",
  number = true,
  relativenumber = false,
  signcolumn = "yes",
  shiftwidth = 2,
  showtabline = 2,
  splitbelow = true,
  splitright = true,
  termguicolors = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
