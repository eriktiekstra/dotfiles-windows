echo "apt update..."
sudo apt -qq update
echo "✔ update done!"

sudo apt -qq install zsh git
echo "✔ base packages are installed"

git pull
echo "✔ dotfiles are up to date"

ln -sf $(pwd)/bash/bashrc ~/.bashrc
echo "✔ zsh as default shell"

# install oh-my-zsh
[ -d ~/.oh-my-zsh ] || git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
[ -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ] || git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

echo "✔ oh my zsh configured!"

ln -sf $(pwd)/zsh/zshrc ~/.zshrc
echo "✔ .zshrc symlinked"

ln -sf $(pwd)/git/gitconfig ~/.gitconfig
ln -sf $(pwd)/git/gitconfig.local ~/.gitconfig.local
ln -sf $(pwd)/git/gitignore.global ~/.gitignore.global
echo "✔ Git config files symlinked"

ln -sf $(pwd) ~/.dotfiles
echo "✔ .dotfiles symlinked"