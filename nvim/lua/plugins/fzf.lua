return {
  -- Plugin principal de fzf
  { "junegunn/fzf", build = "./install --bin" },

  -- Plugin que integra fzf con Neovim
  {
    "ibhagwan/fzf-lua",
    -- Dependencias
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- Configuración
    opts = {
      -- Puedes añadir tus opciones personalizadas aquí
      winopts = {
        height = 0.85,
        width = 0.85,
        row_offset = 0.5,
        col_offset = 0.5,
      },
    },
  },
}
