local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local required, packer = pcall(require, "packer")
if not required then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- Have packer manage itself
  use "wbthomason/packer.nvim"

  -- NOTE: Seems that multiple plugins rely on these two. Let's keep it now and try remove it in the future.
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

  -- My plugins
  use "jiangmiao/auto-pairs" -- Insert or delete brackets, parens, quotes in pair.
  use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install", ft = { "markdown" }, }) -- Markdown previewer

-- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- Buffer completions
  use "hrsh7th/cmp-path" -- Path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions

   -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- Colorschemes
  use "LunarVim/darkplus.nvim"

  -- From old config
  use 'vim-ruby/vim-ruby'
  use 'tpope/vim-rails'
  use 'ngmy/vim-rubocop'
  use 'tpope/vim-endwise'
  use 'Yggdroot/indentLine'
  use 'janko-m/vim-test'
  use 'tpope/vim-surround'
  use 'alvan/vim-closetag'
  use 'tpope/vim-eunuch'
  use 'arthurxavierx/vim-caser'
  use 'tpope/vim-commentary'
  use 'michaeljsmith/vim-indent-object'

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- Highlight
  use "ntpeters/vim-better-whitespace"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
  }
  use {
    'akinsho/git-conflict.nvim',
    tag = "*",
    config = function()
      require('git-conflict').setup()
    end
  }
  use({
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("null-ls").setup()
    end,
    requires = { "nvim-lua/plenary.nvim" },
  })
  use {
    "cuducos/yaml.nvim",
    -- ft = {"yaml", "yml"},
    requires = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim"
    },
  }

  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
