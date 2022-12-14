local override = require "custom.plugins.configs.override"

return {
  -- LSP
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      ---@diagnostic disable-next-line: different-requires
      require "custom.plugins.configs.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.configs.null-ls"
    end,
  },
  ["williamboman/mason.nvim"] = { override_options = override.mason },

  -- UI
  ["goolord/alpha-nvim"] = { disable = false },
  ["folke/which-key.nvim"] = { disable = false },
  ["NvChad/ui"] = { override_options = override.ui },
  ["dstein64/nvim-scrollview"] = {
    opt = true,
    event = { "BufReadPost" },
    config = function()
      require "custom.plugins.configs.scrollview"
    end,
  },

  -- Git
  ["lewis6991/gitsigns.nvim"] = { override_options = override.gitsigns },

  -- Treesitter
  ["nvim-treesitter/nvim-treesitter"] = { override_options = override.treesitter },
  ["nvim-treesitter/nvim-treesitter-textobjects"] = { after = "nvim-treesitter" },
  ["nvim-treesitter/nvim-treesitter-context"] = {
    after = "nvim-treesitter",
    config = function()
      require "custom.plugins.configs.treesitter-context"
    end,
  },

  -- Editor
  ["abecodes/tabout.nvim"] = {
    opt = true,
    event = "InsertEnter",
    wants = "nvim-treesitter",
    after = "nvim-cmp",
    config = function()
      require "custom.plugins.configs.tabout"
    end,
  },
  ["phaazon/hop.nvim"] = {
    opt = true,
    event = "BufReadPost",
    branch = "v2",
    config = function()
      require "custom.plugins.configs.hop"
    end,
  },
  ["mg979/vim-visual-multi"] = {
    opt = true,
    event = "BufReadPost",
    setup = function()
      require "custom.plugins.configs.visual-multi"
    end,
  },
  ["tpope/vim-surround"] = {
    opt = true,
    event = "BufReadPost",
  },
  ["RRethy/vim-illuminate"] = {
    opt = true,
    event = "BufReadPost",
    config = function()
      require "custom.plugins.configs.illuminate"
    end,
  },
  ["karb94/neoscroll.nvim"] = {
    opt = true,
    event = "BufReadPost",
    config = function()
      require "custom.plugins.configs.neoscroll"
    end,
  },
  ["max397574/better-escape.nvim"] = {
    opt = true,
    event = "BufReadPost",
    config = function()
      require "custom.plugins.configs.better-escape"
    end,
  },
  ["rainbowhxch/accelerated-jk.nvim"] = {
    opt = true,
    event = "BufWinEnter",
    config = function()
      require "custom.plugins.configs.accelerated-jk"
    end,
  },
  ["hrsh7th/vim-eft"] = {
    opt = true,
    event = "BufReadPost",
  },
}
