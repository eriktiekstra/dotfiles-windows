echo "Running apt update..."
sudo apt -qq update
echo "✔ Update done!"

sudo apt -qq install zsh git git-flow
echo "✔ Git and ZSH packages are installed!"