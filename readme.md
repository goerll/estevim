Commands to copy this config to your neovim folder:

Windows:
´´´bash
# Clone repository into neovim folder
git clone https://github.com/goerll/estevim $env:LOCALAPPDATA\nvim

# Remove git file
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
´´´

Linux:
´´´bash
# Clone repository into neovim folder
git clone https://github.com/goerll/estevim ~/.config/nvim

# Remove git file
rm -rf ~/.config/nvim/.git
´´´
