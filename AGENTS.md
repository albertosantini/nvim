# Neovim Configuration

This repository contains a small, modular Neovim configuration for Windows.
It targets Neovim 0.12 or newer because it uses the native `vim.pack` plugin
manager.

## Layout

- `init.lua` is the entrypoint. It loads core configuration, adds plugins with
  `vim.pack`, applies the `tokyonight` colorscheme, and then loads plugin setup.
- `lua/config/options.lua` owns editor options, provider settings, leader keys,
  persistent undo, and clipboard behavior.
- `lua/config/keymaps.lua` owns Windows-style editing shortcuts and utility
  mappings. Use `vim.keymap.set` and include `desc` metadata for new mappings.
- `lua/config/autocmds.lua` owns automatic editor events. It currently strips
  trailing whitespace before every buffer write.
- `lua/plugins/fzf.lua` owns `fzf-lua` setup and picker mappings.
- `nvim-pack-lock.json` pins plugin revisions installed by `vim.pack`.

## Runtime Assumptions

- Plugin state is installed under Neovim's data directory, normally
  `nvim-data/site/pack/core/opt`.
- The configured plugins are `folke/tokyonight.nvim` and `ibhagwan/fzf-lua`.
- `fzf-lua` works best when these external tools are available on `PATH`:
  `fd`, `rg`, `fzf`, and `git`.
- The current file picker configuration hardcodes `fd` as the finder command.
  If `fd` is not installed, either install it or make the configuration
  conditional before relying on `<leader>ff`.

## Editing Guidelines

- Keep general editor behavior in `lua/config/*`.
- Keep plugin-specific behavior in `lua/plugins/*`.
- Preserve the simple Lua style already used in the repository.
- Keep changes focused. Avoid broad rewrites unless the user explicitly asks
  for a refactor.
- Preserve LF line endings as configured by `.gitattributes`.
- Do not edit generated plugin directories under `nvim-data`; update this
  repository instead.

## Known Caveats

- `lua/config/autocmds.lua` strips trailing whitespace for every file on save.
  This may alter meaningful whitespace in Markdown, patch files, email, or
  other text-like formats.
- Node, Perl, Python, and Ruby providers are disabled in
  `lua/config/options.lua`. Re-enable only the provider needed by a workflow or
  plugin.
- `init.lua` loads the `tokyonight` colorscheme without a protected fallback.
  A missing or broken plugin install can stop startup at that line.
