local options = {
  clipboard = "unnamedplus",
  expandtab = true,
  ignorecase = true,
  mouse = "a",
  number = true,
  relativenumber = false,
  shiftwidth = 2,
  showtabline = 2,
  signcolumn = "yes",
  splitbelow = true,
  splitright = true,
  termguicolors = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
