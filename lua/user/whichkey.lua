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

  -- Telescope
  ["f"] = {
    "<cmd>Telescope find_files<cr>",
    "Find files",
  },
  ["F"] = { "<cmd>Telescope live_grep theme=ivy<cr>", "Find Text" },
  ["P"] = { "<cmd>lua require('telescope').extensions.projects.projects()<cr>", "Projects" },
  ["b"] = {
    "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>",
    "Buffers",
  },

  -- Packer
  p = {
    name = "Packer",
    c = { "<cmd>PackerCompile<cr>", "Compile" },
    i = { "<cmd>PackerInstall<cr>", "Install" },
    s = { "<cmd>PackerSync<cr>", "Sync" },
    S = { "<cmd>PackerStatus<cr>", "Status" },
    u = { "<cmd>PackerUpdate<cr>", "Update" },
  },

  -- Diagnostics
  d = {
    name = "Diagnostics",
    d = { "<cmd>lua vim.diagnostic.setqflist()<cr>", "Project diagnostic" },
    f = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "Document Diagnostics" },
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code action" },
    i = { "<cmd>NullLsInfo<cr>", "NullLs info" },
  },

  -- LSP
  o = {
    name = "LSP",
    f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" },
  },

  s = {
  -- ["f"] = {
  --   "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
  --   "Find files",
  -- },
    name = "Search",
    b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
    d = { "<cmd>Telescope lsp_definitions<cr>", "Lsp definitions" },
    c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
    h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
    M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
    r = { "<cmd>Telescope lsp_references<cr>", "Lsp references" },
    R = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
    C = { "<cmd>Telescope commands<cr>", "Commands" },
  },
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

