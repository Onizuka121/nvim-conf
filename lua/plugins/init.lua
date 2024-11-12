return {
  -- Tema e colori
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },

  -- Plugin di ricerca: Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = true, -- Eventuale configurazione per telescope (puoi aggiungere un file `telescope.lua`)
  },

  -- Neo-tree: per la gestione dei file
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- Icone di file
      "MunifTanjim/nui.nvim", -- UI e componenti di Neovim
    },
    config = true, -- Eventuale configurazione per neo-tree (puoi aggiungere un file `neo-tree.lua`)
  },

  -- Dipendenze comuni
  {
    'nvim-tree/nvim-web-devicons', -- Icone di file
    lazy = true,
  },

  -- Parser Treesitter
  { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },

  -- Configurazione per Null-ls
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = require('plugins.null-ls') -- File di configurazione separato
  },

  -- Barra di stato: Lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = true, -- Eventuale configurazione per lualine (puoi aggiungere un file `lualine.lua`)
  },

  -- Bufferline: gestione delle schede
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = true, -- Eventuale configurazione per bufferline (puoi aggiungere un file `bufferline.lua`)
  },

  -- Dressing: per una UI migliore
  {
    'stevearc/dressing.nvim',
    opts = {},
  },

  -- Conform: per il supporto ai formatter
  {
    'stevearc/conform.nvim',
    opts = {},
  },

  -- Tema Nightfox
  { "EdenEast/nightfox.nvim" },

  -- Autopairs: per completare automaticamente le parentesi
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true, -- Eventuale configurazione per autopairs (puoi aggiungere un file `autopairs.lua`)
  },

  -- Barbar: una barra di stato alternativa
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- Git status opzionale
      'nvim-tree/nvim-web-devicons', -- Icone di file opzionali
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      animation = true,
      insert_at_start = true,
    },
    version = '^1.0.0', -- Aggiornamenti a versioni 1.x
  },

  -- Completamento: nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- Necessario per completamento LSP
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip"
    },
    config = require("plugins.cmp"), -- File di configurazione separato
  },
}

