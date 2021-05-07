local execute = vim.api.nvim_command
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print("Auto Installing Packer.nvim...")
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute('packadd packer.nvim')
end

return require('packer').startup (
  function(use)

    -- PLUGIN MANAGER
    use 'wbthomason/packer.nvim'

    -- BETTER COMMENTS
    use 'scrooloose/nerdcommenter'
    --use 'tpope/vim-commentary'

    ---- SURROUND
    use 'tpope/vim-surround'

    ---- ICONS
    use 'ryanoasis/vim-devicons'
    use 'kyazdani42/nvim-web-devicons'
    use 'tjdevries/cyclist.vim'

    --TABLINE
    use 'mkitt/tabline.vim'

    ---- CLOSETAGS
    use 'alvan/vim-closetag'

    ---- THEMES
    use 'DilanGMB/nightbuddy'
    use 'gruvbox-community/gruvbox'
    use 'tjdevries/colorbuddy.vim'
    use 'Th3Whit3Wolf/onebuddy'

    ---- TELESCOPE
    use {
      'nvim-telescope/telescope.nvim',
      requires = {{
        'nvim-lua/popup.nvim',
        'nvim-telescope/telescope-fzy-native.nvim'
      }}
    }

    ---- GIT
    use 'tpope/vim-fugitive'

    ----SNIPPETS
    use "rafamadriz/friendly-snippets"
    use "hrsh7th/vim-vsnip"
    use 'mattn/emmet-vim'

    ---- DEBUGGING
    use 'puremourning/vimspector'
    use 'szw/vim-maximizer'

    ----UTILS
    use 'kezhenxu94/vim-mysql-plugin'
    use 'mhartington/formatter.nvim'
    use 'mbbill/undotree'
    use 'mhinz/vim-startify'
    use 'norcalli/nvim-colorizer.lua'
    use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'  }
    --use 'p00f/nvim-ts-rainbow'
    --use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

    ---- TREE
    use 'kyazdani42/nvim-tree.lua'

    ---- BUILT-IN LSP
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/plenary.nvim'
    use 'hrsh7th/nvim-compe'
    use 'mfussenegger/nvim-jdtls'
    --use 'tjdevries/complextras.nvim'
    --use 'RishabhRD/popfix'
    --use 'RishabhRD/nvim-lsputils'

    ---- STATUS LINE
    use 'tjdevries/express_line.nvim'

    -- TREESITTER
    use {
      'nvim-treesitter/nvim-treesitter',
      run = function() vim.cmd [[TSUpdate]] end
    }
    use 'nvim-treesitter/playground'

  end
)
