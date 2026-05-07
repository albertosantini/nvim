-- Load core configs
require("config.options")
require("config.autocmds")
require("config.keymaps")

-- Plugins
vim.pack.add({
    { src = 'https://github.com/folke/tokyonight.nvim' },
    { src = 'https://github.com/ibhagwan/fzf-lua' },
})

vim.cmd("colorscheme tokyonight")

require("plugins.fzf")
