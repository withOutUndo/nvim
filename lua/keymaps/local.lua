local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- set Leader
vim.g.mapleader = " "

-- Vim for Colemak
map("", "n", "j", {})
map("", "e", "k", {})
map("", "i", "l", {})
map("", "j", "e", {})
map("", "k", "n", {})
map("", "l", "i", {})
map("", "K", "N", {})
map("", "N", "5j", {})
map("", "E", "5k", {})
map("", "L", "I", {})

map("", "H", "0", {})
map("", "I", "$", {})

-- Shortcut for quiting and saving
map("", "Q", ":q<cr>", {})
map("", "S", ":w<cr>", {})

-- Copy and Past from the system clipboard
map("v", "Y", '"+y', {})
map("n", "P", '"+p', {})

-- Some functional configuration
map("n", "<backspace>", "<cmd>noh<cr>", {}) -- cancel highlight that from search
map("n", "<leader><leader>", "viw", {}) -- select a word
map("n", "-", "@q", {}) -- play the macro 'q'
map("n", "<c-a>", "gg<s-v>G", {}) -- select all
map("n", "f", "<c-w>w", {}) -- change window
map("n", "<Leader>s", "<cmd>vsplit<cr><c-w>w", {})

-- -- NvimTree
-- Open NvimTree
map("n", "<c-e>", "<cmd>NvimTreeToggle<CR>", {})

-- -- Telescope
-- Find file
map("n", "<Leader>ff", "<cmd>Telescope find_files theme=dropdown<CR>", {})
-- Find word
map("n", "<Leader>fg", "<cmd>Telescope live_grep theme=dropdown<CR>", {})
-- Find special sample
map("n", "<Leader>fb", "<cmd>Telescope buffers theme=dropdown<CR>", {})
-- check help doc
map("n", "<Leader>fh", "<cmd>Telescope help_tags theme=dropdown<CR>", {})
-- check recent files
map("n", "<Leader>fo", "<cmd>Telescope oldfiles theme=dropdown<CR>", {})
-- find marks
map("n", "<Leader>fm", "<cmd>Telescope marks theme=dropdown<CR>", {})

-- Terminal
map("n", "<C-t>", "<cmd>FloatermToggle<CR>", {})
map("t", "<Esc>", "<C-\\><C-n>", {})

-- Format
map("n", "<C-I>", "<cmd>Format<CR>", {})

-- Save
map("n", "<C-s>", "<cmd>wa<CR>", {})

-- Start cmd
map("n", ";", ":", {})
