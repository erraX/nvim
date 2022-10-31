local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

vim.lsp.set_log_level("trace")

require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
require "user.lsp.volar"
-- require "user.lsp.vuels"
