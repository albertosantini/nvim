local keymap = vim.keymap.set

local function map(mode, lhs, rhs, desc)
  keymap(mode, lhs, rhs, { noremap = true, silent = true, desc = desc })
end

-- Windows-style editing shortcuts.
map({ "n", "x" }, "<C-s>", "<cmd>write<cr>", "Save file")
map("i", "<C-s>", "<esc><cmd>write<cr>a", "Save file")

map("n", "<C-a>", "ggVG", "Select all")
map("i", "<C-a>", "<esc>ggVG", "Select all")
map("x", "<C-a>", "<esc>ggVG", "Select all")

map("x", "<C-c>", '"+y', "Copy selection")
map("x", "<C-x>", '"+d', "Cut selection")

map("n", "<C-v>", '"+p', "Paste")
map("i", "<C-v>", "<C-r>+", "Paste")
map("x", "<C-v>", '"+p', "Paste over selection")

map("n", "<C-z>", "u", "Undo")
map("i", "<C-z>", "<C-o>u", "Undo")
map("x", "<C-z>", "<esc>u", "Undo")

map("n", "<C-y>", "<C-r>", "Redo")
map("i", "<C-y>", "<C-o><C-r>", "Redo")
map("x", "<C-y>", "<esc><C-r>", "Redo")

map("n", "<C-f>", "/", "Find")
map("i", "<C-f>", "<esc>/", "Find")

-- Keep visual block available after assigning Ctrl+V to paste.
map("n", "<C-q>", "<C-v>", "Visual block")

-- Utility shortcuts.
map("n", "<F6>", "<cmd>bnext<cr>", "Next buffer")
map("n", "<S-F6>", "<cmd>bprevious<cr>", "Previous buffer")
map("n", "<leader>l", "<cmd>ls<cr>", "List buffers")
map("n", "<leader>w", "<cmd>bdelete<cr>", "Close buffer")
map("n", "<esc>", "<cmd>nohlsearch<cr>", "Clear search highlight")

map("n", "gp", "`[v`]", "Select last changed text")
map("x", "<", "<gv", "Indent left")
map("x", ">", ">gv", "Indent right")

-- Move lines.
map("n", "<A-j>", "<cmd>move .+1<cr>==", "Move line down")
map("n", "<A-k>", "<cmd>move .-2<cr>==", "Move line up")
map("i", "<A-j>", "<esc><cmd>move .+1<cr>==gi", "Move line down")
map("i", "<A-k>", "<esc><cmd>move .-2<cr>==gi", "Move line up")
map("x", "<A-j>", ":move '>+1<cr>gv=gv", "Move selection down")
map("x", "<A-k>", ":move '<-2<cr>gv=gv", "Move selection up")
