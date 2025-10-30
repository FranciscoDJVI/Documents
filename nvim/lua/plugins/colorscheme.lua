return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
  {

    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  { "bluz71/vim-moonfly-colors", name = "moonfly",    lazy = false,   priority = 1000 },
  { "catppuccin/nvim",           name = "catppuccin", priority = 1000 },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "samharju/synthweave.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Esta función se ejecutará después de que el plugin se cargue
      require("poimandres").setup()
    end,
  },
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
  },
  { "datsfilipe/vesper.nvim" },
}
