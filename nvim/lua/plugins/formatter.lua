return {
  "stevearc/conform.nvim",
  event = "BufWritePre", -- Load before writing a buffer
  cmd = { "ConformInfo" },
  opts = {
    -- Configure your formatters
    formatters_by_ft = {
      python = { "black" },
      -- Add other filetypes and formatters here
    },
    -- Format on save
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true, -- Use LSP formatting as a fallback
    },
  },
  init = function()
    -- Set up an autocmd to format on save (if not using `format_on_save` in opts)
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("ConformFormatting", {}),
      pattern = "*.py",
      callback = function(args)
        require("conform").format({ bufnr = args.buf, async = true })
      end,
    })
  end,
}
