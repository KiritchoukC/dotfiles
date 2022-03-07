echo off
cls

set path= %~dp0

echo mklink /D %path%.config %path%dotfiles\.config
mklink /D %path%.config %path%dotfiles\.config
echo mklink %path%.bashrc %path%dotfiles\.bashrc
mklink %path%.bashrc %path%dotfiles\.bashrc
echo mklink %path%.git %path%dotfiles\.git
mklink %path%.git %path%dotfiles\.git
echo mklink %path%.gitignore %path%dotfiles\.gitignore
mklink %path%.gitignore %path%dotfiles\.gitignore
echo mklink %path%.ideavimrc %path%dotfiles\.ideavimrc
mklink %path%.ideavimrc %path%dotfiles\.ideavimrc
echo mklink %path%.p10k.zsh %path%dotfiles\.zsh
mklink %path%.p10k.zsh %path%dotfiles\.zsh
echo mklink %path%.profile %path%dotfiles\.profile
mklink %path%.profile %path%dotfiles\.profile
echo mklink %path%.stow-global-ignore %path%dotfiles\.stow-global-ignore
mklink %path%.stow-global-ignore %path%dotfiles\.stow-global-ignore
echo mklink %path%.stow-local-ignore %path%dotfiles\.stow-local-ignore
mklink %path%.stow-local-ignore %path%dotfiles\.stow-local-ignore
echo mklink %path%.tmux.conf %path%dotfiles\.conf
mklink %path%.tmux.conf %path%dotfiles\.conf
echo mklink %path%.vimrc %path%dotfiles\.vimrc
mklink %path%.vimrc %path%dotfiles\.vimrc
echo mklink %path%.vsvimrc %path%dotfiles\.vsvimrc
mklink %path%.vsvimrc %path%dotfiles\.vsvimrc
echo mklink %path%.zshrc %path%dotfiles\.zshrc
mklink %path%.zshrc %path%dotfiles\.zshrc
PAUSE
