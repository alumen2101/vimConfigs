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

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here
    use "wbthomason/packer.nvim"
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"

    -- colorschemes
    use "folke/tokyonight.nvim"
    use "tyrannicaltoucan/vim-deep-space"   -- deep-space
    use "jaredgorski/fogbell.vim"           -- fogbell
    use "whatyouhide/vim-gotham"            -- gothom
    use "cocopon/iceberg.vim"               -- iceberg
    use "NLKNguyen/papercolor-theme"        -- papercolor
    use "tpope/vim-vividchalk"              -- vividchalk

     -- cmp plugins
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"

    -- snippets
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    -- LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"

    -- telescope
    use "nvim-telescope/telescope.nvim"

   -- -- treesitter
    use "nvim-treesitter/nvim-treesitter"
    use "p00f/nvim-ts-rainbow"
    use "nvim-treesitter/playground"

    -- nvim-tree
    use "kyazdani42/nvim-web-devicons"
    use "kyazdani42/nvim-tree.lua"

    -- buffer Line
    use "akinsho/bufferline.nvim"
    use "moll/vim-bbye"

    -- autopairs
    use "windwp/nvim-autopairs"

    -- alpha
    use "goolord/alpha-nvim"

    -- impatient
    use "lewis6991/impatient.nvim"

    -- indent Line
    use "lukas-reineke/indent-blankline.nvim"

    -- lua Line
    use "nvim-lualine/lualine.nvim"

    -- html auto tag
    use "windwp/nvim-ts-autotag"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
