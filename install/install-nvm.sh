echo "🤞 Installing and configuring NVM..."
ln -sf $(pwd)/nvm/nvmrc ~/.nvmrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | zsh
sh ~/.nvm/nvm.sh install
echo "🎉🍻 NVM installed and configured!"
