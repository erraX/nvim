local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local mappings = {
  -- Nvim tree
  ["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" },

  -- File management
  ["w"] = { "<cmd>w!<CR>", "Save" },
  ["q"] = { "<cmd>q!<CR>", "Quit" },

  -- Buffer management
  ["c"] = { "<cmd>Bdelete!<CR>", "Close Buffer" },

  -- Utils
  ["h"] = { "<cmd>nohlsearch<CR>", "No Highlight" },

  -- Packer
  p = {
    name = "Packer",
    c = { "<cmd>PackerCompile<cr>", "Compile" },
    i = { "<cmd>PackerInstall<cr>", "Install" },
    s = { "<cmd>PackerSync<cr>", "Sync" },
    S = { "<cmd>PackerStatus<cr>", "Status" },
    u = { "<cmd>PackerUpdate<cr>", "Update" },
  },

  -- LSP
  o = {
    name = "LSP",
    f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" },
  }
}

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

-- which_key.setup(setup)
which_key.register(mappings, opts)

