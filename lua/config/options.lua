local opt = vim.opt
local g = vim.g

-- Leaders (set early)
g.mapleader = " "
g.maplocalleader = ","

-- Line and UI
opt.number = true           -- Show absolute line numbers
opt.relativenumber = true   -- Show relative line numbers
opt.cursorline = true       -- Highlight the current line
opt.signcolumn = "yes"      -- Always show the sign column
opt.wrap = false            -- Disable line wrapping
opt.scrolloff = 8           -- Keep 8 lines of context around the cursor
opt.list = true
opt.listchars:append("space:·")

-- Indentation
opt.expandtab = true        -- Use spaces instead of tabs
opt.tabstop = 4             -- Number of spaces a tab represents
opt.shiftwidth = 4          -- Number of spaces for each indentation level
opt.autoindent = true       -- Copy the indentation from the previous line

-- Search
opt.ignorecase = true       -- Case insensitive search
opt.smartcase = true        -- Case sensitive if the search term has uppercase
opt.hlsearch = false        -- Don't highlight search results by default
opt.incsearch = true        -- Show matches as you type

-- File and Persistence
opt.swapfile = false        -- Disable swap files
opt.backup = false          -- Disable backup files
opt.undofile = true         -- Enable persistent undo history
opt.undodir = vim.fn.stdpath("data") .. "/undo" -- Directory for undo files

-- Create the undo directory if it doesn't exist
local undodir = vim.fn.stdpath("data") .. "/undo"
vim.fn.mkdir(undodir, "p")

-- Clipboard
opt.clipboard = "unnamedplus" -- Use the system clipboard
