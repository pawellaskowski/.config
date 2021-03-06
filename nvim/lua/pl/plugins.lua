local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = vim.fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer, close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
  use "wbthomason/packer.nvim"
  use "williamboman/nvim-lsp-installer"
  use "neovim/nvim-lspconfig"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "L3MON4D3/LuaSnip"
  use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"
  use "mkitt/tabline.vim"
  use "nvim-lualine/lualine.nvim"
  use "lewis6991/gitsigns.nvim"
  use "tpope/vim-fugitive"
  use "akinsho/toggleterm.nvim"

  use {
    "nvim-telescope/telescope.nvim",
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  use {"nvim-telescope/telescope-file-browser.nvim"}

  use {
    "prettier/vim-prettier",
    ft = { "html", "javascript", "typescript", "typescriptreact" },
    run = "yarn install",
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  -- use "folke/tokyonight.nvim"
  -- use "tyrannicaltoucan/vim-deep-space"
  -- use "jacoborus/tender.vim"
  use "bluz71/vim-nightfly-guicolors"

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

