-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local map = vim.keymap.set
-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", "vd_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>")

-- New tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h>")
keymap.set("n", "sk", "<C-w>k>")
keymap.set("n", "sj", "<C-w>j>")
keymap.set("n", "sl", "<C-w>l>")

-- Resizw window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.get_next()
end, opts)

-- La tecla 'leader' es configurada normalmente como <Space>

-----------------------------------------------------------
-- 1. ABRIR Y CERRAR TERMINAL (Modo Normal)
-----------------------------------------------------------

-- Mapeo para abrir la terminal en un split inferior y pasar a Insert mode
-- Esto es útil para comandos rápidos.
map("n", "<leader>t", ":split term://fish<CR>", { desc = "Abrir Terminal Abajo" })

-- Mapeo para abrir la terminal en un split vertical a la derecha
map("n", "<leader>tv", ":vsplit term://fish<CR>", { desc = "Abrir Terminal Vertical" })

-- Mapeo para cerrar el buffer de la terminal (en modo Normal)
map("n", "<leader>tc", ":close<CR>", { desc = "Cerrar Buffer Actual" })

-----------------------------------------------------------
-- 2. SALIR DEL MODO TERMINAL (Terminal Mode -> Normal Mode)
-----------------------------------------------------------
-- En el modo terminal ('t'), todas las teclas van al shell.
-- Para regresar a Normal Mode, usamos la secuencia especial <C-\><C-n>
--
-- Se usa <Esc> (o 'jk', si lo prefieres) para el escape rápido.
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Terminal a Normal Mode" })

-----------------------------------------------------------
-- 3. NAVEGACIÓN DE VENTANAS (Ambos Modos: Normal y Terminal)
-----------------------------------------------------------
-- Permite saltar entre ventanas (splits) usando Ctrl + H,J,K,L.
-- El mapeo '<C-w>h/j/k/l' es nativo de Nvim y funciona en ambos modos,
-- pero lo re-mapeamos para mayor consistencia y legibilidad.

local win_modes = { "n", "t" }

for _, mode in ipairs(win_modes) do
  -- Mover a la ventana izquierda
  map(mode, "<C-h>", "<C-w>h", { desc = "Mover a ventana izquierda" })

  -- Mover a la ventana de abajo
  map(mode, "<C-j>", "<C-w>j", { desc = "Mover a ventana abajo" })

  -- Mover a la ventana de arriba
  map(mode, "<C-k>", "<C-w>k", { desc = "Mover a ventana arriba" })

  -- Mover a la ventana derecha
  map(mode, "<C-l>", "<C-w>l", { desc = "Mover a ventana derecha" })
end
