I'm still experimenting with this config and it's in a very early stage. I will be constantly updating it as my needs in software development grow and change.

# Dependencies
For optimal functioning of all the plugins, you need these installed:
- GCC
- G++

# Language support
This config uses mason and mason-lspconfig for linting. Configuration of these plugins are in the lsp-config.lua file.

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

Script for my personal use at school computers:
```bash
# Extract neovim
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
mv squashfs-root neovim

# Extract neovide
chmod u+x neovide.appimage
./neovide.AppImage --appimage-extract
mv squashfs-root neovide

# Remove current config
rm -rf ~/.config/nvim

# Clone mine and remove git file
git clone https://github.com/goerll/estevim ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Create alias in .bashrc
echo "alias neovide='./~/Downloads/neovide/usr/bin/neovide' --neovim-bin ~/Downloads/neovim/usr/bin/nvim" >>~/.bashrc
```

