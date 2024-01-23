I'm still experimenting with this config and it's in a very early stage. I will be constantly updating it as my needs in software development grow and change.

# Dependencies
For optimal functioning of all the plugins, you need these installed:
- GCC
- G++

# Language support
This config uses the [Ale](https://github.com/dense-analysis/ale) plugin to get linting features, languages that have linting activated:
- C++
- C
- Ruby
- Rust
- Java
- Javascript
- Python
- Lua
- HTML
- CSS

# Installation
Commands to copy this config to your neovim folder:

Windows:
```bash
# Clone repository into neovim folder
git clone https://github.com/goerll/estevim $env:LOCALAPPDATA\nvim

# Remove git file
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
```

Linux/macOS:
```bash
# Clone repository into neovim folder
git clone https://github.com/goerll/estevim ~/.config/nvim

# Remove git file
rm -rf ~/.config/nvim/.git
```
