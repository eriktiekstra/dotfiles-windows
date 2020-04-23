
ln -sf $(pwd)/nvm/nvmrc ~/.nvmrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | zsh
. ~/.nvm/nvm.sh install
echo "✔ NVM installed and configured"