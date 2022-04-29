#!/bin/bash
path="/home/$USER/.local/bin"

echo "\033[1;31m"
echo "_______________________________"
echo "               "
echo "Current version"
$path/nvim.appimage --version | head -n1
echo "_______________________________"
echo "\033[0m"

rm -rf "$path/nvim.appimage"
wget -P $path https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x "$path/nvim.appimage"

echo "\033[1;32m"
echo "_______________________________"
echo "               "
echo "New version"
$path/nvim.appimage --version | head -n1
echo "_______________________________"
echo "\033[0m"
