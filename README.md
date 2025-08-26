# Setup
## Requirements
- `neovim`
- `nodejs`
## Steps
1. In your home directory create a folder called `.config`.
2. Inside of that clone this repo.
3. Run `nvim .` inside that repo for the initial install to happen
   
# Notes
I followed this post to setup neovim plugins

https://dev.to/slydragonn/ultimate-neovim-setup-guide-lazynvim-plugin-manager-23b7

https://github.com/slydragonn/nvim-lazy/tree/main

# Process

It seems like for any plugin I want to add i have to make a `package.lua` file in the `plugins` folder and have it return whatever settings I want.

# Nvim Tidbits
- Spacebar is my leader key. It is set in my `init.lua` file
- Toggle TreeSitter with `leader tt`
- Fuzzyfind file with Telescope and open with `leader ff`
- Telescope File Explorer with `leader fe`
- General neovim keymappings go into the `init.lua` file
- Tab and ShiftTab switch buffers (aka tabs)
- `:vs` creates a vertical split. ctrl-w h or l switches focus.

# Todo
- Setup VS Code like autocompletes for python and sql
