local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

-- Debug LSP
-- vim.lsp.set_log_level("trace")

require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
