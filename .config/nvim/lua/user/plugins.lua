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
local status_ok, packer = pcall(require, "packer")
if not status_ok then
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

return packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Have packer manage itself
  use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim
  use 'nvim-lua/plenary.nvim' -- Useful lua functions used ny lots of plugins
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use { 'akinsho/bufferline.nvim', tag='v3.*', requires = 'nvim-tree/nvim-web-devicons'}
  use 'moll/vim-bbye' -- Bbye allows you to do delete buffers (close files) without closing your windows or messing up your layout
  use 'nvim-lualine/lualine.nvim'
  use 'ahmedkhalf/project.nvim'
  use 'lewis6991/impatient.nvim'
  use 'akinsho/toggleterm.nvim'
  use 'numToStr/FTerm.nvim'
  -- use 'lukas-reineke/indent-blankline.nvim'
  use 'goolord/alpha-nvim'
  use 'antoinemadec/FixCursorHold.nvim' -- This is needed to fix lsp doc highlight
  use 'folke/which-key.nvim'
  use {
    'kylechui/nvim-surround',
    config = function()
      require('nvim-surround').setup({

      })
    end
  }
  use 'wakatime/vim-wakatime'

  -- Colorschemes
  -- use 'lunarvim/colorschemes' -- A bunch of colorschemes you can try out
  use 'lunarvim/darkplus.nvim'
  use({
      "catppuccin/nvim",
      as = "catppuccin"
  })

  -- cmp plugins
  use 'hrsh7th/nvim-cmp' -- The completion plugin
  use 'hrsh7th/cmp-buffer' -- buffer completions
  use 'hrsh7th/cmp-path' -- path completions
  use 'hrsh7th/cmp-cmdline' -- cmdline completions
  use 'saadparwaiz1/cmp_luasnip' -- snippet completions
  use 'hrsh7th/cmp-nvim-lsp'
  use 'windwp/nvim-ts-autotag'

  -- snippets
  use 'L3MON4D3/LuaSnip' --snippet engine
  use 'rafamadriz/friendly-snippets' -- a bunch of snippets to use

  -- LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig' -- enable LSP
  use 'tamago324/nlsp-settings.nvim' -- language server settings defined in json for
  use 'jose-elias-alvarez/null-ls.nvim' -- for formatters and linters
  use 'MunifTanjim/prettier.nvim'
  use {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    }
  } 

  use {
    'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu',
  } -- user friendly pop menu for lsp code actions
  use 'kosayoda/nvim-lightbulb' -- vscode lightbulb - showing when a code action is available
  use {
      'kkoomen/vim-doge',
      run = ':call doge#install()'
  } -- docs generator

  -- Debugging
  -- use 'mfussenegger/nvim-dap'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

  -- Mini
  use { 'echasnovski/mini.nvim', branch = 'stable' }

  -- Treesitter 
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Session manager
  use({
    'olimorris/persisted.nvim',
    --module = 'persisted', -- For lazy loading
    config = function()
      require('persisted').setup()
      require('telescope').load_extension('persisted') -- To load the telescope extension
    end,
  })

  -- Git
  use 'lewis6991/gitsigns.nvim'
  -- use 'tpope/vim-fugitive'

  -- -- Useless
  -- use 'eandrju/cellular-automaton.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
