local execute = vim.api.nvim_command

local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print("Auto Installing Packer.nvim...")
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute('packadd packer.nvim')
end

return require('packer').startup(function(use)

  local local_use = function(plug_path)
    if vim.fn.isdirectory(vim.fn.expand("~/Plugins/" .. plug_path)) == 1 then
      use("~/Plugins/" .. plug_path)
    else
      use(string.format('%s/%s', os.getenv("HOME"), plug_path))
    end
  end

  -- Local plugins
  local_use 'nvimdb'

  -- Plugin manager
  use 'wbthomason/packer.nvim'

  -- Better comments
  use 'numToStr/Comment.nvim'

  -- Surround
  use 'tpope/vim-surround'

  -- Icons
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'
  use 'tjdevries/cyclist.vim'
  use 'onsails/lspkind-nvim'

  --Tabline
  use 'mkitt/tabline.vim'

  -- Closetags
  use 'alvan/vim-closetag'

  -- Themes
  local_use 'nebulous.nvim'
  use 'eddyekofo94/gruvbox-flat.nvim'
  use 'rebelot/kanagawa.nvim'
  use 'gruvbox-community/gruvbox'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{
      'nvim-lua/popup.nvim',
      'nvim-telescope/telescope-fzy-native.nvim'
    }}
  }

  -- Git
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'

  -- Snippets
  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/vim-vsnip'
  -- use 'L3MON4D3/LuaSnip'

  -- Debugging
  use 'mfussenegger/nvim-dap'
  -- use "rcarriga/nvim-dap-ui"
  -- use "theHamsta/nvim-dap-virtual-text"

  use 'jbyuki/one-small-step-for-vimkind'

  -- Utils
  use 'mhartington/formatter.nvim'
  use 'mbbill/undotree'
  use 'norcalli/nvim-colorizer.lua'
  use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'  }
  use 'szw/vim-maximizer'
  -- use 'mhinz/vim-startify'

  -- Tree
  use 'kyazdani42/nvim-tree.lua'
  -- use 'tamago324/lir.nvim'
  -- use "tamago324/lir-git-status.nvim"

  -- Built-in lsp
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/plenary.nvim'
  use 'mfussenegger/nvim-jdtls'

  -- Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-vsnip'
  -- use 'saadparwaiz1/cmp_luasnip'

  -- Status line
  use 'tjdevries/express_line.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() vim.cmd[[TSUpdate]] end
  }
  use 'nvim-treesitter/playground'

end)
