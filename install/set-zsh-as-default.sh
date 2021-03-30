ln -sf $(pwd)/bash/bashrc ~/.bashrc
echo "✔ ZSH set as default shell!"

ln -sf $(pwd)/zsh/zshrc ~/.zshrc
ln -sf $(pwd)/zsh/p10k.zsh ~/.p10k.zsh
echo "✔ ZSH file symlinked!"
