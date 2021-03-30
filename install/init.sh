echo "🤞 Running apt upgrade..."
sudo apt -qq upgrade
echo "🎉🍻 Upgrade done!"

echo "🤞 Running apt update..."
sudo apt -qq update
echo "🎉🍻 Update done!"

echo "🤞 Installing zsh, git and git-flow..."
sudo apt -qq install zsh git git-flow
echo "🎉🍻 Git and ZSH packages are installed!"
