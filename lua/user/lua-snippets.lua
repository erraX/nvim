-- local status_ok, snippets = pcall(require, "luasnip.loaders.from_vscode")
-- if not status_ok then
--   return
-- end

require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.config/nvim/lua/user/snippets" } });
