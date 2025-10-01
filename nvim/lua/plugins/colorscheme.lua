return {
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
  {
    "yorumicolors/yorumi.nvim",
    priority = 1000,
  },
}
