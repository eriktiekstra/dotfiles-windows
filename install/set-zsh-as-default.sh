echo "🤞 Setting ZSH as default shell..."
ln -sf $(pwd)/bash/bashrc ~/.bashrc
echo "🎉🍻 ZSH set as default shell!"

echo "🤞 Configuring ZSH..."
ln -sf $(pwd)/zsh/zshrc ~/.zshrc
ln -sf $(pwd)/zsh/p10k.zsh ~/.p10k.zsh
echo "🎉🍻 ZSH files symlinked!"
