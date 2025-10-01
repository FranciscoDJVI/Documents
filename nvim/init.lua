-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- HightLight
vim.api.nvim_set_hl(0, "CursorLine", { bg = "none", bold = true }) -- Cambia el fondo a gris y la fuente a negrita
vim.api.nvim_set_hl(0, "CursorLineNR", { fg = "#f07f00", bold = true }) -- Cambia el color del número de línea a naranja y lo pone en negrita
